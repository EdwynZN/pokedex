import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/filter_repository.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';
import 'package:poke_app/infrastructure/log_service_mixin.dart';

final class FilterGraphRepository with FirebaseLog implements FilterRepository {
  final PokeGraphApi api;

  const FilterGraphRepository(this.api);

  @override
  Future<Either<DomainFailure, PokemonFilter>> getFilters() async {
    try {
      final response = await api.getPokemonFilters();
      return Right(response);
    } on OperationException catch (e) {
      recordError(e, e.originalStackTrace, reason: 'getFilters');
      final errors = e.graphqlErrors;
      if (errors.isEmpty) {
        return const Left(
            ItemFailure(message: 'Not Found', name: 'getFilters'));
      }
      return Left(UnknownFailure(error: e.graphqlErrors));
    } catch (e, s) {
      recordError(e, s, reason: 'getFilters');
      return Left(UnknownFailure(error: e));
    }
  }
}
