import 'package:dartz/dartz.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';

abstract interface class PokemonRepository {
  Future<Either<DomainFailure, List<PokemonShallow>>> getPage({
    int offset = 0,
    int limit = 60,
    PokemonFilter filter = const PokemonFilter(),
    String? query,
    bool onlyFavorites,
  });

  Future<Either<DomainFailure, Pokemon>> getDetail({required int id});

  Future<Either<DomainFailure, Pokemon>> changeFavorite({
    required int id,
    required bool isFavorite,
  });
}
