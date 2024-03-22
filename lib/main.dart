import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:poke_app/controller/filter_store.dart';
import 'package:poke_app/controller/pokedex_store.dart';
import 'package:poke_app/controller/theme_store.dart';
import 'package:poke_app/domain/pokemon/filter_repository.dart';
import 'package:poke_app/domain/pokemon/implementation/filter_graph_repository.dart';
import 'package:poke_app/domain/pokemon/implementation/pokemon_graph_repository.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';
import 'package:poke_app/presentation/routes/router.dart';
import 'package:provider/provider.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(const [DeviceOrientation.portraitUp]);
    runApp(MultiProvider(
      providers: [
        Provider<ThemeStore>(create: (_) => ThemeStore()),
        Provider<GoRouter>(create: (_) => createRouter()),
        Provider<PokeGraphApi>(
          create: (_) => PokeGraphApi(
            GraphQLClient(
              cache: GraphQLCache(),
              defaultPolicies: DefaultPolicies(
                query: Policies(
                  cacheReread: CacheRereadPolicy.mergeOptimistic,
                  fetch: FetchPolicy.cacheFirst,
                ),
              ),
              link: Link.from([
                HttpLink(
                  'https://beta.pokeapi.co/graphql/v1beta',
                  defaultHeaders: const {'content-type': 'application/json'},
                ),
              ]),
            ),
          ),
        ),
        Provider<PokemonRepository>(
          create: (context) =>
              PokemonGraphRepository(context.read<PokeGraphApi>()),
        ),
        Provider<FilterRepository>(
          create: (context) =>
              FilterGraphRepository(context.read<PokeGraphApi>()),
        ),
        Provider<CacheManager>(
          create: (_) => CacheManager(
            Config(
              'pokemon',
              stalePeriod: const Duration(days: 7),
              maxNrOfCacheObjects: 400,
            ),
          ),
        ),
        Provider<PokedexStore>(
          create: (context) => PokedexStore(
            context.read<PokemonRepository>(),
          ),
          dispose: (context, store) => store.dispose(),
        ),
        Provider<FilterStore>(
          create: (context) => FilterStore(
            filterRepository: context.read<FilterRepository>(),
          ),
          dispose: (context, store) => store.dispose(),
        ),
      ],
      child: const PokedexApp(),
    ));
  }, (error, stackTrace) {
  });

}

class PokedexApp extends StatelessObserverWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = context.watch<GoRouter>();
    final themeStore = context.watch<ThemeStore>();
    return MaterialApp.router(
      theme: themeStore.light,
      darkTheme: themeStore.dark,
      themeMode: themeStore.mode,
      routerConfig: router,
    );
  }
}
