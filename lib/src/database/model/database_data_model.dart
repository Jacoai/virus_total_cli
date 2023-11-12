import 'package:hive/hive.dart';

part 'database_data_model.g.dart';

@HiveType(typeId: 0)
class VirusTotalData {
  @HiveField(0)
  int harmless;

  @HiveField(1)
  int malicious;

  @HiveField(2)
  int suspicious;

  @HiveField(3)
  int undetected;

  @HiveField(4)
  int timeout;

  @HiveField(5)
  int time;

  @HiveField(6)
  String source;

  @HiveField(7)
  bool isFile;

  @HiveField(8)
  String? md5;

  VirusTotalData({
    required this.harmless,
    required this.malicious,
    required this.suspicious,
    required this.timeout,
    required this.undetected,
    required this.time,
    required this.source,
    required this.isFile,
    this.md5,
  });
}
