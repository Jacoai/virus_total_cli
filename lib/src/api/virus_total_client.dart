import 'package:dio/dio.dart';
import 'dart:io';

import 'package:virus_total_cli/src/api/models/analysis_data_model/analysis_data_model.dart';

class VirusTotalClient {
  VirusTotalClient({required String apikey}) : _apikey = apikey;

  final Dio _dio = Dio(
    BaseOptions(baseUrl: 'https://www.virustotal.com/api/v3/'),
  );

  final String _apikey;

  Future<AnalysisData> check(String path) async {
    AnalysisData analysisData;
    String id;
    final dynamic sendData;

    RegExp urlRegex = RegExp(
      r'[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    );
//filling in data depending on whether it is a file or a link
    if (path.contains(urlRegex)) {
      sendData = path;
    } else {
      String filePath = path.split(Platform.pathSeparator).last;
      sendData = FormData.fromMap(
        {
          'file': await MultipartFile.fromFile(filePath),
        },
      );
    }

    try {
      id = await _getAnalysisId(path, sendData);
    } catch (e) {
      throw Exception(e);
    }

    try {
      analysisData = await _getAnalysis(id);
      //queue handling
      while (analysisData.attributes.status == 'queued') {
        print('$path is in a queue\n');
        await Future.delayed(Duration(seconds: 15));
        analysisData = await _getAnalysis(id);
      }
    } catch (e) {
      throw Exception(e);
    }

    return analysisData;
  }

  Future<String> _getAnalysisId(String path, dynamic data) async {
    String id;

    try {
      Response response = await _dio.post('urls',
          data: data,
          options: Options(headers: {
            'x-apikey': _apikey,
            "content-type": "application/x-www-form-urlencoded"
          }));

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
      Response response = await _dio.get('analyses/$id',
          options: Options(headers: {
            'x-apikey': _apikey,
            "accept": "application/json",
          }));

      result = AnalysisData.fromJson(response.data['data']);
    } catch (e) {
      throw Exception('Error: get Analysis report: $e');
    }

    return result;
  }
}
