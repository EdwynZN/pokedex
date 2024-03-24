// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_graph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeGraphShallowResponseImpl _$$PokeGraphShallowResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokeGraphShallowResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PokeGraphShallowResponseImplToJson(
        _$PokeGraphShallowResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PokeGraphResponseImpl _$$PokeGraphResponseImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['id', 'name', 'color', 'details', 'evolutions'],
  );
  return _$PokeGraphResponseImpl(
    id: json['id'] as int,
    name: json['name'] as String,
    color: PokeGraphColor.fromJson(json['color'] as Map<String, dynamic>),
    details: PokeGraphDetails.fromJson(
        _readDetails(json, 'details') as Map<String, dynamic>),
    evolutions:
        PokeGraphEvolution.fromJson(json['evolutions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$PokeGraphResponseImplToJson(
        _$PokeGraphResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color.toJson(),
      'details': instance.details.toJson(),
      'evolutions': instance.evolutions.toJson(),
    };

_$PokeGraphEvolutionImpl _$$PokeGraphEvolutionImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['pokemons'],
  );
  return _$PokeGraphEvolutionImpl(
    pokemons: (json['pokemons'] as List<dynamic>)
        .map((e) => PokemonFromEvolution.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$$PokeGraphEvolutionImplToJson(
        _$PokeGraphEvolutionImpl instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons.map((e) => e.toJson()).toList(),
    };

_$PokemonFromEvolutionImpl _$$PokemonFromEvolutionImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['id', 'name'],
  );
  return _$PokemonFromEvolutionImpl(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$PokemonFromEvolutionImplToJson(
        _$PokemonFromEvolutionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PokeGraphColorImpl _$$PokeGraphColorImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['value'],
  );
  return _$PokeGraphColorImpl(
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$$PokeGraphColorImplToJson(
        _$PokeGraphColorImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$PokeGraphDetailsImpl _$$PokeGraphDetailsImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'height',
      'weight',
      'base_experience',
      'sprites'
    ],
  );
  return _$PokeGraphDetailsImpl(
    height: json['height'] as int,
    weight: json['weight'] as int,
    baseExperience: json['base_experience'] as int,
    sprites: PokeGraphSprite.fromJson(
        _readSprite(json, 'sprites') as Map<String, dynamic>),
    abilities: (json['abilities'] as List<dynamic>?)
            ?.map((e) => PokeGraphAbility.fromJson(e as Map<String, dynamic>))
            .toList() ??
        const [],
    movements: (json['moves'] as List<dynamic>?)
            ?.map((e) => PokeGraphMove.fromJson(e as Map<String, dynamic>))
            .toList() ??
        const [],
    stats: (json['stats'] as List<dynamic>?)
            ?.map((e) => PokeGraphStat.fromJson(e as Map<String, dynamic>))
            .toList() ??
        const [],
    types: (json['types'] as List<dynamic>?)
            ?.map((e) => PokeGraphType.fromJson(e as Map<String, dynamic>))
            .toList() ??
        const [],
  );
}

Map<String, dynamic> _$$PokeGraphDetailsImplToJson(
        _$PokeGraphDetailsImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'base_experience': instance.baseExperience,
      'sprites': instance.sprites.toJson(),
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'moves': instance.movements.map((e) => e.toJson()).toList(),
      'stats': instance.stats.map((e) => e.toJson()).toList(),
      'types': instance.types.map((e) => e.toJson()).toList(),
    };

_$PokeGraphMoveImpl _$$PokeGraphMoveImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['name'],
  );
  return _$PokeGraphMoveImpl(
    name: _moveWrapper(json, 'name') as String,
  );
}

Map<String, dynamic> _$$PokeGraphMoveImplToJson(_$PokeGraphMoveImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PokeGraphStatImpl _$$PokeGraphStatImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['name'],
  );
  return _$PokeGraphStatImpl(
    name: _statWrapper(json, 'name') as String,
    value: json['value'] as int,
  );
}

Map<String, dynamic> _$$PokeGraphStatImplToJson(_$PokeGraphStatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$PokeGraphTypeImpl _$$PokeGraphTypeImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['name'],
  );
  return _$PokeGraphTypeImpl(
    name: _typeWrapper(json, 'name') as String,
  );
}

Map<String, dynamic> _$$PokeGraphTypeImplToJson(_$PokeGraphTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PokeGraphAbilityImpl _$$PokeGraphAbilityImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['name'],
  );
  return _$PokeGraphAbilityImpl(
    name: _abilityWrapper(json, 'name') as String,
    secret: json['secret'] as bool,
  );
}

Map<String, dynamic> _$$PokeGraphAbilityImplToJson(
        _$PokeGraphAbilityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'secret': instance.secret,
    };

_$PokeGraphSpriteImpl _$$PokeGraphSpriteImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['front_default', 'back_default'],
  );
  return _$PokeGraphSpriteImpl(
    front: json['front_default'] as String,
    back: json['back_default'] as String,
    frontShiny: json['front_shiny'] as String?,
    backShiny: json['back_shiny'] as String?,
    frontFemale: json['front_female'] as String?,
    backFemale: json['back_female'] as String?,
    frontShinyFemale: json['front_shiny_female'] as String?,
    backShinyFemale: json['back_shiny_female'] as String?,
  );
}

Map<String, dynamic> _$$PokeGraphSpriteImplToJson(
    _$PokeGraphSpriteImpl instance) {
  final val = <String, dynamic>{
    'front_default': instance.front,
    'back_default': instance.back,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('front_shiny', instance.frontShiny);
  writeNotNull('back_shiny', instance.backShiny);
  writeNotNull('front_female', instance.frontFemale);
  writeNotNull('back_female', instance.backFemale);
  writeNotNull('front_shiny_female', instance.frontShinyFemale);
  writeNotNull('back_shiny_female', instance.backShinyFemale);
  return val;
}
