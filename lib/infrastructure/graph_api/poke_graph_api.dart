import 'package:graphql/client.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_response.dart';
import 'package:poke_app/infrastructure/graph_api/pokemon_graph_filter_query.dart';
import 'package:poke_app/infrastructure/graph_api/pokemon_graph_queries.dart';

class PokeGraphApi {
  final GraphQLClient graphClient;

  PokeGraphApi(this.graphClient);

  Future<List<PokemonShallow>> getPokemons({
    int offset = 0,
    int limit = 60,
    required List<int> generationsID,
    required List<int> typesID,
    required List<int> colorsID,
  }) async {
    final query = pokemonsQueryWithFilters(
      filterTypes: typesID.isNotEmpty,
      filterColors: colorsID.isNotEmpty,
    );
    final options = QueryOptions<List<PokemonShallow>>(
      document: gql(query),
      variables: {
        'offset': offset,
        'limit': limit,
        if (generationsID.isNotEmpty) 'generations': generationsID,
        if (typesID.isNotEmpty) 'types': typesID,
        if (colorsID.isNotEmpty) 'colors': colorsID,
      },
      fetchPolicy: FetchPolicy.cacheFirst,
      cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
      parserFn: (data) {
        final pokemons = data['pokemons'] as List;
        return pokemons
            .map(
              (e) => PokemonShallow.fromJson(
                (e as Map<String, dynamic>)
                  ..addAll({
                    'image':
                        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${e['id']}.svg'
                  }),
              ),
            )
            .toList();
      },
    );

    final result = await graphClient.query(options).timeout(
          const Duration(seconds: 10),
          onTimeout: () => QueryResult.unexecuted,
        );

    if (result.hasException) {
      throw result.exception!;
    }

    final data = result.data;

    if (data == null) {
      throw Exception('No data');
    }

    final List<PokemonShallow> p;
    try {
      p = result.parsedData!;
    } catch (e) {
      rethrow;
    }

    return p;
  }

  Future<PokeGraphResponse> getPokemonDetail(int id) async {
    final options = QueryOptions<PokeGraphResponse>(
      document: gql(pokemonDetailQuery),
      fetchPolicy: FetchPolicy.cacheFirst,
      cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
      variables: {'id': id},
      parserFn: (data) {
        final pokemon = data['pokemon'] as List;
        return PokeGraphResponse.fromJson(
          pokemon.first as Map<String, dynamic>,
        );
      },
    );

    final result = await graphClient.query(options).timeout(
          const Duration(seconds: 10),
          onTimeout: () => QueryResult.unexecuted,
        );

    if (result.hasException) {
      throw result.exception!;
    }

    final data = result.data as Map?;

    if (data == null || (data['pokemon'] as List).isEmpty) {
      throw Exception('No data');
    }

    final PokeGraphResponse p;
    try {
      p = result.parsedData!;
    } catch (e) {
      rethrow;
    }

    return p;
  }

  Future<PokemonFilter> getPokemonFilters() async {
    final options = QueryOptions<PokemonFilter>(
      document: gql(filterQuery),
      fetchPolicy: FetchPolicy.cacheFirst,
      cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
      parserFn: PokemonFilter.fromJson,
    );

    final result = await graphClient.query(options).timeout(
          const Duration(seconds: 10),
          onTimeout: () => QueryResult.unexecuted,
        );

    if (result.hasException) {
      throw result.exception!;
    }

    final data = result.data as Map?;

    if (data == null) {
      throw Exception('No data');
    }

    final PokemonFilter p;
    try {
      p = result.parsedData!;
    } catch (e) {
      rethrow;
    }

    return p;
  }
}
