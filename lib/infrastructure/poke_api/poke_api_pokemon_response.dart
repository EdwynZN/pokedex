// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/sprite.dart';

part 'poke_api_pokemon_response.freezed.dart';
part 'poke_api_pokemon_response.g.dart';

@freezed
class PokeApiWrapperResponse with _$PokeApiWrapperResponse {
  const factory PokeApiWrapperResponse({
    required final List<PokeApiListValue> results,
  }) = _PokeApiWrapperResponse;

  factory PokeApiWrapperResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PokeApiWrapperResponseFromJson(json);
}

@freezed
class PokeApiListValue with _$PokeApiListValue {
  const factory PokeApiListValue({
    required final String name,
    required final String url,
  }) = _PokeApiListValue;

  factory PokeApiListValue.fromJson(
    Map<String, dynamic> json,
  ) => _$PokeApiListValueFromJson(json);
}

@freezed
class PokeApiPokemonResponse with _$PokeApiPokemonResponse {
  const PokeApiPokemonResponse._();
  
  const factory PokeApiPokemonResponse({
    required final int id,
    required final String name,
    required final int height,
    required final int weight,
    @JsonKey(name: 'base_experience') required final int baseExperience,
    required final PokeApiSprite sprites,
    required final List<PokeApiMove> moves,
    required final List<PokeApiType> types,
    required final List<PokeApiAbility> abilities,
    required final List<PokeApiStat> stats,
  }) = _PokeApiPokemonResponse;

  Pokemon toDomain() => Pokemon(
        id: id,
        name: name,
        height: height,
        weight: weight,
        baseExperience: baseExperience,
        image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg',
        sprite: Sprite(
          back: sprites.back,
          front: sprites.front,
        ),
        femaleSprite: sprites.backFemale != null && sprites.frontFemale != null
            ? Sprite(
                back: sprites.backFemale!,
                front: sprites.frontFemale!,
              )
            : null,
        shinySprite: sprites.backShiny != null && sprites.frontShiny != null
            ? Sprite(
                back: sprites.backShiny!,
                front: sprites.frontShiny!,
              )
            : null,
        shinyFemaleSprite:
            sprites.backShinyFemale != null && sprites.frontShinyFemale != null
                ? Sprite(
                    back: sprites.backShinyFemale!,
                    front: sprites.frontShinyFemale!,
                  )
                : null,
        abilities: abilities.map(
          (e) => Ability(name: e.ability.name, secret: e.isHidden),
        ).toList(),
        movements: moves.map((e) => Move(name: e.move.name)).toList(),
        types: types.map((e) => PokemonType(name: e.type.name)).toList(),
        stats: stats.map(
          (e) => Stat(name: e.stat.name, value: e.baseStat),
        ).toList(),
      );

  factory PokeApiPokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokeApiPokemonResponseFromJson(json);
}

@freezed
class PokeApiSprite with _$PokeApiSprite {
  const factory PokeApiSprite({
    @JsonKey(name: 'back_default') required final String back,
    @JsonKey(name: 'back_female') final String? backFemale,
    @JsonKey(name: 'back_shiny') final String? backShiny,
    @JsonKey(name: 'back_shiny_female') final String? backShinyFemale,
    @JsonKey(name: 'front_default') required final String front,
    @JsonKey(name: 'front_female') final String? frontFemale,
    @JsonKey(name: 'front_shiny') final String? frontShiny,
    @JsonKey(name: 'front_shiny_female') final String? frontShinyFemale,
  }) = _PokeApiSprite;

  factory PokeApiSprite.fromJson(Map<String, dynamic> json) =>
      _$PokeApiSpriteFromJson(json);
}

@freezed
class PokeApiMove with _$PokeApiMove {
  const factory PokeApiMove({
    required final PokeApiNameWrapper move,
  }) = _PokeApiMove;

  factory PokeApiMove.fromJson(Map<String, dynamic> json) =>
      _$PokeApiMoveFromJson(json);
}

@freezed
class PokeApiAbility with _$PokeApiAbility {
  const factory PokeApiAbility({
    required final PokeApiNameWrapper ability,
    @JsonKey(name: 'is_hidden') required final bool isHidden,
  }) = _PokeApiAbility;

  factory PokeApiAbility.fromJson(Map<String, dynamic> json) =>
      _$PokeApiAbilityFromJson(json);
}

@freezed
class PokeApiType with _$PokeApiType {
  const factory PokeApiType({
    required final PokeApiNameWrapper type,
  }) = _PokeApiType;

  factory PokeApiType.fromJson(Map<String, dynamic> json) =>
      _$PokeApiTypeFromJson(json);
}

@freezed
class PokeApiStat with _$PokeApiStat {
  const factory PokeApiStat({
    required final PokeApiNameWrapper stat,
    @JsonKey(name: 'base_stat') required final int baseStat,
  }) = _PokeApiStat;

  factory PokeApiStat.fromJson(Map<String, dynamic> json) =>
      _$PokeApiStatFromJson(json);
}

@freezed
class PokeApiNameWrapper with _$PokeApiNameWrapper {
  const factory PokeApiNameWrapper({
    required final String name,
  }) = _PokeApiNameWrapper;

  factory PokeApiNameWrapper.fromJson(Map<String, dynamic> json) =>
      _$PokeApiNameWrapperFromJson(json);
}

