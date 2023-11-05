// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VirusTotalDataAdapter extends TypeAdapter<VirusTotalData> {
  @override
  final int typeId = 0;

  @override
  VirusTotalData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VirusTotalData(
      harmless: fields[0] as int,
      malicious: fields[1] as int,
      suspicious: fields[2] as int,
      timeout: fields[4] as int,
      undetected: fields[3] as int,
      time: fields[5] as int,
      source: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VirusTotalData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.harmless)
      ..writeByte(1)
      ..write(obj.malicious)
      ..writeByte(2)
      ..write(obj.suspicious)
      ..writeByte(3)
      ..write(obj.undetected)
      ..writeByte(4)
      ..write(obj.timeout)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.source);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VirusTotalDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
