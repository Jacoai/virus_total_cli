import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:hive/hive.dart';
import 'package:virus_total_cli/src/database/model/database_data_model.dart';
import 'package:virus_total_cli/virus_total_cli.dart';

//TODO: Add delete method
//TODO: Add TTL checker
class DatabaseClient {
  DatabaseClient({String databaseName = "mainData"})
      : _databaseName = databaseName;

  final String _databaseName;
  late Box<VirusTotalData> dataBase;

  Future<void> init() async {
    Hive.init(_databaseName);
    Hive.registerAdapter(VirusTotalDataAdapter());
    dataBase = await Hive.openBox(_databaseName);
  }

  Future<void> close() async {
    await dataBase.close();
  }

  void show() {
    final allData = dataBase.values.toList();
    for (int i = 0; i < allData.length; i++) {
      printDBResult(allData[i]);
    }
  }

  Future<void> deletePath(String key) async {
    key = await _getKey(key, _isFile(key));

    await dataBase.delete(key);
  }

  Future<void> delete(String key) async {
    await dataBase.delete(key);
  }

  Future<VirusTotalData?> get(String key) async {
    key = await _getKey(key, _isFile(key));
    return dataBase.get(key);
  }

  Future<void> put(String key, AnalysisData data) async {
    VirusTotalData virusTotalData =
        convertAnalysisDataToVirusTotalData(data, key, data.isFile);
    bool isFile = virusTotalData.isFile;
    try {
      key = await _getKey(key, isFile);
      if (isFile) {
        virusTotalData.md5 = key;
      }
    } catch (e) {
      rethrow;
    }

    await dataBase.put(key, virusTotalData);
  }

  Future<bool> containsKey(String key) async {
    try {
      key = await _getKey(key, _isFile(key));
    } catch (e) {
      rethrow;
    }

    return dataBase.containsKey(key);
  }

  Future<String> _calculateMD5(File file) async {
    final stream = file.openRead();
    final myMd5 = await md5.bind(stream).first;
    final hash = myMd5.toString();
    return (hash);
  }

  Future<String> _getKey(String path, bool isFile) async {
    if (isFile) {
      final file = File(path);

      if (!file.existsSync()) {
        throw Exception(
          "File: $path does not exists",
        );
      } else {
        return await _calculateMD5(file);
      }
    } else {
      return path;
    }
  }

  bool _isFile(String path) {
    RegExp urlRegex = RegExp(
        r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?");

    if (path.contains(urlRegex)) {
      return false;
    }
    return true;
  }

  void printDBResult(VirusTotalData data) {
    print('Source:${data.source}');
    print('Harmless:${data.harmless}');
    print('Malicious:${data.malicious}');
    print('Suspicious:${data.suspicious}');
    print('Undetected:${data.undetected}');
    print('Md5:${data.md5}');
    print('isfile:${data.isFile}');
    print('Timeout:${data.timeout}');
    print('Date ${DateTime.fromMillisecondsSinceEpoch(data.time * 1000)}\n');
  }
}
