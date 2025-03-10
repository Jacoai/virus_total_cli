import 'package:dio/dio.dart';
import 'package:virus_total_cli/src/api/models/analysis_data_model/analysis_data_model.dart';
import 'dart:io';

class VirusTotalClient {
  VirusTotalClient({
    required this.apikey,
  });

  late final Dio _dio;

  final String apikey;

  void init() {
    _dio = Dio(
      BaseOptions(baseUrl: 'https://www.virustotal.com/api/v3/'),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            options.headers.addAll({'x-apikey': apikey});
            return handler.next(options);
          },
        ),
      );
  }

  Future<AnalysisData> check(String path, bool isFile) async {
    AnalysisData analysisData;
    String id;
    final dynamic sendData;

//filling in data depending on whether it is a file or a link
    if (!isFile) {
      sendData = {'url': path};
    } else {
      String filePath = path.split(Platform.pathSeparator).join('/');
      sendData = FormData.fromMap(
        {
          'file': await MultipartFile.fromFile(filePath),
        },
      );
    }

    try {
      id = await _getAnalysisId(path, sendData, isFile);
    } catch (e) {
      rethrow;
    }

    try {
      analysisData = await _getAnalysis(id);
      //queue handling
      while (analysisData.attributes.status == 'queued') {
        print('$path is in a queue\n');
        await Future.delayed(Duration(seconds: 25));
        analysisData = await _getAnalysis(id);
      }
    } catch (e) {
      rethrow;
    }

    analysisData = analysisData.copyWith(isFile: isFile);
    return analysisData;
  }

  Future<String> _getAnalysisId(String path, dynamic data, bool isFile) async {
    String id;

    try {
      Response response = await _dio.post(
        isFile ? 'files' : 'urls',
        data: data,
        options: Options(
          headers: {"content-type": "application/x-www-form-urlencoded"},
        ),
      );

      Map<String, dynamic> json = response.data;
      id = json['data']['id'];
    } catch (e) {
      rethrow;
    }

    return id;
  }

  Future<AnalysisData> _getAnalysis(String id) async {
    AnalysisData result;

    try {
      Response response = await _dio.get(
        'analyses/$id',
        options: Options(
          headers: {
            "accept": "application/json",
          },
        ),
      );

      result = AnalysisData.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }

    return result;
  }
}
