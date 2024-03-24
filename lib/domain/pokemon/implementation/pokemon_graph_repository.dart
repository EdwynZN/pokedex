import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/infrastructure/graph_api/model/poke_graph_response.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';
import 'package:poke_app/infrastructure/local_object_box_api/model/ob_local_pokemon.dart';
import 'package:poke_app/infrastructure/local_object_box_api/object_box_pokemon_source.dart';
import 'package:poke_app/infrastructure/log_service_mixin.dart';
import 'package:collection/collection.dart';

typedef _PokemonShallowResponses = ({
  List<PokeGraphShallowResponse> api,
  List<ObLocalPokemon> local,
  bool onlyFavorites
});

List<PokemonShallow> _filterPokemons(_PokemonShallowResponses responses) {
  final List<PokemonShallow> pokemons = [];
  for (final pokemon in responses.api) {
    final bool isFavorite = responses.local
            .firstWhereOrNull((element) => element.id == pokemon.id)
            ?.isFavorite ??
        false;
    if (responses.onlyFavorites && !isFavorite) {
      continue;
    }
    pokemons.add(PokemonShallow(
      id: pokemon.id,
      name: pokemon.name,
      image: pokemon.image,
      isFavorite: isFavorite,
    ));
  }
  return pokemons;
}

final class PokemonGraphRepository
    with FirebaseLog
    implements PokemonRepository {
  final PokeGraphApi api;
  final PokemonOBSource oBSource;

  const PokemonGraphRepository(this.api, this.oBSource);

  @override
  Future<Either<DomainFailure, Pokemon>> getDetail({required int id}) async {
    try {
      final response = await api.getPokemonDetail(id);
      final List<int> ids = [
        response.id,
        ...response.evolutions.pokemons.map((p) => p.id),
      ];
      final localResponse = await oBSource.getAllByID(ids);
      bool isFavorite = false;
      Map<int, bool> pokemons = {};
      if (localResponse.isNotEmpty) {
        pokemons = Map.fromEntries(
          localResponse.map((e) => MapEntry(e.id, e.isFavorite)),
        );
        //isFavorite = localResponse.single.isFavorite;
        isFavorite = pokemons.remove(response.id) ?? isFavorite;
      }
      return Right(response.toDomain(isFavorite, pokemons));
    } on OperationException catch (e) {
      recordError(
        e,
        e.originalStackTrace,
        reason: 'getDetail',
        information: [id],
      );
      final errors = e.graphqlErrors;
      if (errors.isEmpty) {
        return Left(ItemFailure(message: 'Not Found', name: id.toString()));
      }
      return Left(UnknownFailure(error: e.graphqlErrors));
    } catch (e, s) {
      recordError(e, s, reason: 'getDetail', information: [id]);
      return Left(UnknownFailure(error: e));
    }
  }

  @override
  Future<Either<DomainFailure, List<PokemonShallow>>> getPage({
    int offset = 0,
    int limit = 60,
    PokemonFilter filter = const PokemonFilter(),
    String? query,
    bool onlyFavorites = false,
  }) async {
    try {
      final List<PokemonShallow> pokemons;
      final List<PokeGraphShallowResponse> apiResponse;
      final List<ObLocalPokemon> favResponse;
      if (onlyFavorites) {
        favResponse = await oBSource.getFavorites(
          offset: offset,
          limit: limit,
        );
        if (favResponse.isEmpty) {
          return const Right([]);
        }
        apiResponse = await api.getPokemons(
          offset: offset,
          limit: limit,
          generationsID: filter.generations.map((e) => e.id).toList(),
          typesID: filter.types.map((e) => e.id).toList(),
          colorsID: filter.colors.map((e) => e.id).toList(),
          search: query,
          between: (min: favResponse.first.id, max: favResponse.last.id),
        );
      } else {
        apiResponse = await api.getPokemons(
          offset: offset,
          limit: limit,
          generationsID: filter.generations.map((e) => e.id).toList(),
          typesID: filter.types.map((e) => e.id).toList(),
          colorsID: filter.colors.map((e) => e.id).toList(),
          search: query,
        );
        favResponse = await oBSource.getAllByID(
          apiResponse.map((e) => e.id).toList(),
        );
      }
      final _PokemonShallowResponses responses =
          (api: apiResponse, local: favResponse, onlyFavorites: onlyFavorites);
      pokemons = await compute(_filterPokemons, responses);
      return Right(pokemons);
    } on OperationException catch (e) {
      recordError(
        e,
        e.originalStackTrace,
        reason: 'getPage',
        information: [offset, limit, filter, if (query != null) query],
      );
      final errors = e.graphqlErrors;
      if (errors.isEmpty) {
        return Left(ItemFailure(message: 'Not Found', name: offset.toString()));
      }
      return Left(UnknownFailure(error: e.graphqlErrors));
    } catch (e, s) {
      recordError(
        e,
        s,
        reason: 'getPage',
        information: [offset, limit, filter, if (query != null) query],
      );
      return Left(UnknownFailure(error: e));
    }
  }

  @override
  Future<Either<DomainFailure, Pokemon>> changeFavorite({
    required int id,
    required bool isFavorite,
  }) async {
    final localResponse = await getDetail(id: id);
    if (localResponse.isLeft()) {
      return localResponse;
    }
    final pokemon = localResponse.fold((l) => throw l, (r) => r);
    final localPokemon = ObLocalPokemon(
      id: pokemon.id,
      image: pokemon.image,
      isFavorite: pokemon.isFavorite,
      name: pokemon.name,
    );
    await oBSource.upsert(pokemon: localPokemon, isFavorite: isFavorite);

    return Right(pokemon.copyWith(isFavorite: isFavorite));
  }
}
