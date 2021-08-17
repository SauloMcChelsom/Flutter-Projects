// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetAdapter extends TypeAdapter<Planet> {
  @override
  final int typeId = 2;

  @override
  Planet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Planet(
      id: fields[0] as int,
      name: fields[1] as String,
      rotationPeriod: fields[2] as String,
      orbitalPeriod: fields[3] as String,
      diameter: fields[4] as String,
      climate: fields[5] as String,
      gravity: fields[6] as String,
      terrain: fields[7] as String,
      surfaceWater: fields[8] as String,
      population: fields[9] as String,
      residents: (fields[10] as List).cast<String>(),
      films: (fields[11] as List).cast<String>(),
      created: fields[12] as String,
      edited: fields[13] as String,
      url: fields[14] as String,
      isFavorite: fields[15] as bool,
      image: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Planet obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rotationPeriod)
      ..writeByte(3)
      ..write(obj.orbitalPeriod)
      ..writeByte(4)
      ..write(obj.diameter)
      ..writeByte(5)
      ..write(obj.climate)
      ..writeByte(6)
      ..write(obj.gravity)
      ..writeByte(7)
      ..write(obj.terrain)
      ..writeByte(8)
      ..write(obj.surfaceWater)
      ..writeByte(9)
      ..write(obj.population)
      ..writeByte(10)
      ..write(obj.residents)
      ..writeByte(11)
      ..write(obj.films)
      ..writeByte(12)
      ..write(obj.created)
      ..writeByte(13)
      ..write(obj.edited)
      ..writeByte(14)
      ..write(obj.url)
      ..writeByte(15)
      ..write(obj.isFavorite)
      ..writeByte(16)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
