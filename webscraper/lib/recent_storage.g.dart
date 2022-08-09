// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentSearchesAdapter extends TypeAdapter<RecentSearches> {
  @override
  final int typeId = 0;

  @override
  RecentSearches read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentSearches()..recent = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, RecentSearches obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.recent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentSearchesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
