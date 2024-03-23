import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';
import 'package:poke_app/infrastructure/log_service_mixin.dart';

final class PokemonGraphRepository with FirebaseLog implements PokemonRepository {
  final PokeGraphApi api;

  const PokemonGraphRepository(this.api);

  @override
  Future<Either<DomainFailure, Pokemon>> getDetail({required int id}) async {
    try {
      final response = await api.getPokemonDetail(id);
      return Right(response.toDomain());
    } on OperationException catch (e) {
      recordError(e, e.originalStackTrace, reason: 'getDetail', information: [id]);
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
  }) async {
    try {
      final response = await api.getPokemons(
        offset: offset,
        limit: limit,
        generationsID: filter.generations.map((e) => e.id).toList(),
        typesID: filter.types.map((e) => e.id).toList(),
        colorsID: filter.colors.map((e) => e.id).toList(),
        search: query,
      );
      return Right(response);
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
}
