import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:poke_app/infrastructure/local_object_box_api/object_box.dart';
import 'package:poke_app/infrastructure/local_object_box_api/object_box_pokemon_source.dart';
import 'package:poke_app/presentation/controller/filter_store.dart';
import 'package:poke_app/presentation/controller/pokedex_store.dart';
import 'package:poke_app/presentation/controller/theme_store.dart';
import 'package:poke_app/domain/pokemon/filter_repository.dart';
import 'package:poke_app/domain/pokemon/implementation/filter_graph_repository.dart';
import 'package:poke_app/domain/pokemon/implementation/pokemon_graph_repository.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/firebase_options.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';
import 'package:poke_app/presentation/routes/router.dart';
import 'package:provider/provider.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final objectbox = await ObjectBox.create();

    /// Firebase initialization
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    /// When not in debug mode:
    ///
    /// - Report crash to FirebaseCrashlytics
    ///
    /// - Change ErrorWidget to show a grey Container
    if (!kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        unawaited(FirebaseCrashlytics.instance.recordFlutterError(details));
      };
      ErrorWidget.builder = (_) => Container(color: Colors.grey.shade300);
    } else {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }

    SystemChrome.setPreferredOrientations(const [DeviceOrientation.portraitUp]);
    runApp(MultiProvider(
      providers: [
        Provider<ObjectBox>.value(value: objectbox),
        Provider<PokemonOBSource>(
          create: (context) => PokemonOBSource(
            store: context.read<ObjectBox>().store,
          ),
        ),
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
    if (kDebugMode) {
      debugPrintStack(stackTrace: stackTrace, label: error.toString());
      return;
    }
    unawaited(FirebaseCrashlytics.instance.recordError(error, stackTrace));
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
      themeAnimationStyle: AnimationStyle(
        curve: Curves.easeInOutCubicEmphasized,
        duration: const Duration(milliseconds: 450),
      ),
      routerConfig: router,
    );
  }
}
