import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/domain/pokemon/model/sprite.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required final int id,
    required final String name,
    required final int height,
    required final int weight,
    required final int baseExperience,
    required final String image,
    required final Sprite sprite,
    required final String color,
    final Sprite? femaleSprite,
    final Sprite? shinySprite,
    final Sprite? shinyFemaleSprite,
    @Default([]) final List<Ability> abilities,
    @Default([]) final List<Move> movements,
    @Default([]) final List<Stat> stats,
    @Default([]) final List<PokemonType> types,
  }) = _Pokemon;
	
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
			_$PokemonFromJson(json);
}

@freezed
class Move with _$Move {
  const factory Move({
    required final String name,
  }) = _Move;
	
  factory Move.fromJson(Map<String, dynamic> json) =>
			_$MoveFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    required final String name,
    required final int value,
  }) = _Stat;
	
  factory Stat.fromJson(Map<String, dynamic> json) =>
			_$StatFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    required final String name,
  }) = _PokemonType;
	
  factory PokemonType.fromJson(Map<String, dynamic> json) =>
			_$PokemonTypeFromJson(json);
}

@freezed
class Ability with _$Ability {
  const factory Ability({
    required final String name,
    required final bool secret,
  }) = _Ability;
	
  factory Ability.fromJson(Map<String, dynamic> json) =>
			_$AbilityFromJson(json);
}
