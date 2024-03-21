import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/sprite.dart';

part 'poke_graph_response.freezed.dart';
part 'poke_graph_response.g.dart';

Map<String, dynamic> _readSprite(Map<dynamic, dynamic> map, String key) {
  final sprites = (map[key] as List).cast<Map>();
  return sprites.first['sprites'] as Map<String, dynamic>;
}

Map<String, dynamic> _readDetails(Map<dynamic, dynamic> map, String key) {
  final sprites = (map[key] as List).cast<Map>();
  return sprites.first as Map<String, dynamic>;
}

String _moveWrapper(Map<dynamic, dynamic> map, String key) => _unwrap(map, key, 'move');
String _typeWrapper(Map<dynamic, dynamic> map, String key) => _unwrap(map, key, 'type');
String _abilityWrapper(Map<dynamic, dynamic> map, String key) => _unwrap(map, key, 'ability');
String _statWrapper(Map<dynamic, dynamic> map, String key) => _unwrap(map, key, 'stat');

String _unwrap(Map<dynamic, dynamic> map, String key, String outterKey) {
  final sprites = map[outterKey] as Map<dynamic, dynamic>;
  return sprites[key] as String;
}

@freezed
class PokeGraphResponse with _$PokeGraphResponse {
  const PokeGraphResponse._();
  
  const factory PokeGraphResponse({
    @JsonKey(disallowNullValue: true) required final int id,
    @JsonKey(disallowNullValue: true) required final String name,
    @JsonKey(disallowNullValue: true) required final PokeGraphColor color,
    @JsonKey(readValue: _readDetails) required final PokeGraphDetails details,
  }) = _PokeGraphResponse;

  factory PokeGraphResponse.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphResponseFromJson(json);

  Pokemon toDomain() => Pokemon(
        id: id,
        name: name,
        height: details.height,
        weight: details.weight,
        baseExperience: details.baseExperience,
        image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg',
        sprite: Sprite(
          front: details.sprites.front,
          back: details.sprites.back,
        ),
        femaleSprite: details.sprites.frontFemale == null ||
          details.sprites.backFemale == null ? null : Sprite(
          back: details.sprites.backFemale!,
          front: details.sprites.frontFemale!,
        ),
        shinySprite: details.sprites.frontShiny == null ||
          details.sprites.backShiny == null ? null : Sprite(
          back: details.sprites.backShiny!,
          front: details.sprites.frontShiny!,
        ),
        shinyFemaleSprite: details.sprites.frontShinyFemale == null ||
          details.sprites.backShinyFemale == null ? null : Sprite(
          back: details.sprites.backShinyFemale!,
          front: details.sprites.frontShinyFemale!,
        ),
        abilities: details.abilities
            .map(
              (a) => Ability(
                name: a.name,
                secret: a.secret,
              ),
            )
            .toList(),
        stats: details.stats
            .map(
              (s) => Stat(
                name: s.name,
                value: s.value,
              ),
            )
            .toList(),
        movements: details.movements
            .map(
              (m) => Move(
                name: m.name,
              ),
            )
            .toList(),
        types: details.types
            .map(
              (t) => PokemonType(
                name: t.name,
              ),
            )
            .toList(),
      );
}

@freezed
class PokeGraphColor with _$PokeGraphColor {
  const factory PokeGraphColor({
    @JsonKey(disallowNullValue: true) required final String value,
  }) = _PokeGraphColor;

  factory PokeGraphColor.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphColorFromJson(json);
}

@freezed
class PokeGraphDetails with _$PokeGraphDetails {
  const factory PokeGraphDetails({
    @JsonKey(disallowNullValue: true) required final int height,
    @JsonKey(disallowNullValue: true) required final int weight,
    @JsonKey(name: 'base_experience', disallowNullValue: true) required final int baseExperience,
    @JsonKey(readValue: _readSprite, disallowNullValue: true) required final PokeGraphSprite sprites,
    @Default([]) final List<PokeGraphAbility> abilities,
    @Default([]) @JsonKey(name: 'moves') final List<PokeGraphMove> movements,
    @Default([]) final List<PokeGraphStat> stats,
    @Default([]) final List<PokeGraphType> types,
  }) = _PokeGraphDetails;

  factory PokeGraphDetails.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphDetailsFromJson(json);
}

@freezed
class PokeGraphMove with _$PokeGraphMove {
  const factory PokeGraphMove({
    @JsonKey(readValue: _moveWrapper, disallowNullValue: true) required final String name,
  }) = _PokeGraphMove;

  factory PokeGraphMove.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphMoveFromJson(json);
}

@freezed
class PokeGraphStat with _$PokeGraphStat {
  const factory PokeGraphStat({
    @JsonKey(readValue: _statWrapper, disallowNullValue: true) required final String name,
    required final int value,
  }) = _PokeGraphStat;

  factory PokeGraphStat.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphStatFromJson(json);
}

@freezed
class PokeGraphType with _$PokeGraphType {
  const factory PokeGraphType({
    @JsonKey(readValue: _typeWrapper, disallowNullValue: true) required final String name,
  }) = _PokeGraphType;

  factory PokeGraphType.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphTypeFromJson(json);
}

@freezed
class PokeGraphAbility with _$PokeGraphAbility {
  const factory PokeGraphAbility({
    @JsonKey(readValue: _abilityWrapper, disallowNullValue: true) required final String name,
    required final bool secret,
  }) = _PokeGraphAbility;

  factory PokeGraphAbility.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphAbilityFromJson(json);
}

@freezed
class PokeGraphSprite with _$PokeGraphSprite {
  const factory PokeGraphSprite({
    @JsonKey(name: 'front_default', disallowNullValue: true) required final String front,
    @JsonKey(name: 'back_default', disallowNullValue: true) required final String back,
    @JsonKey(name: 'front_shiny') final String? frontShiny,
    @JsonKey(name: 'back_shiny') final String? backShiny,
    @JsonKey(name: 'front_female') final String? frontFemale,
    @JsonKey(name: 'back_female') final String? backFemale,
    @JsonKey(name: 'front_shiny_female') final String? frontShinyFemale,
    @JsonKey(name: 'back_shiny_female') final String? backShinyFemale,
  }) = _PokeGraphSprite;

  factory PokeGraphSprite.fromJson(Map<String, dynamic> json) =>
      _$PokeGraphSpriteFromJson(json);
}
