// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonFilterImpl _$$PokemonFilterImplFromJson(Map<String, dynamic> json) =>
    _$PokemonFilterImpl(
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => PokemonAttribute.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => PokemonAttribute.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
      generations: (json['generations'] as List<dynamic>?)
              ?.map((e) => PokemonAttribute.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$PokemonFilterImplToJson(_$PokemonFilterImpl instance) =>
    <String, dynamic>{
      'types': instance.types.map((e) => e.toJson()).toList(),
      'colors': instance.colors.map((e) => e.toJson()).toList(),
      'generations': instance.generations.map((e) => e.toJson()).toList(),
    };

_$PokemonAttributeImpl _$$PokemonAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAttributeImpl(
      id: json['id'] as int,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$PokemonAttributeImplToJson(
        _$PokemonAttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
