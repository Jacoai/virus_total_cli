import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:hive/hive.dart';
import 'package:virus_total_cli/src/database/model/database_data_model.dart';

class DatabaseClient {
  DatabaseClient({String databaseName = "mainData"})
      : _databaseName = databaseName;

  final String _databaseName;
  late Box<VirusTotalData> _dataBase;

  Future<void> init() async {
    Hive.init(_databaseName);
    Hive.registerAdapter(VirusTotalDataAdapter());
    _dataBase = await Hive.openBox(_databaseName);
  }

  Future<void> close() async {
    await _dataBase.close();
  }

  void showDatabase(Box<VirusTotalData> database) {
    final allData = database.values.toList();
    for (int i = 0; i < allData.length; i++) {
      printDBResult(allData[i]);
    }
  }

  Future<void> put(String key, VirusTotalData value) async {
    try {
      key = await _getKey(key);
    } catch (e) {
      rethrow;
    }

    await _dataBase.put(key, value);
  }

  Future<bool> containsKey(String key) async {
    try {
      key = await _getKey(key);
    } catch (e) {
      rethrow;
    }

    return _dataBase.containsKey(key);
  }

  Future<String> _calculateMD5(File file) async {
    final stream = file.openRead();
    final myMd5 = await md5.bind(stream).first;
    final hash = myMd5.toString();
    return (hash);
  }

  Future<String> _getKey(String path) async {
    if (_isFile(path)) {
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
        r'[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)');

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
    print('Timeout:${data.timeout}');
    print('Date ${DateTime.fromMillisecondsSinceEpoch(data.time * 1000)}\n');
  }
}
