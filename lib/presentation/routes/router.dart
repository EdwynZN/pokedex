import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/presentation/controller/pokemon_details_store.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/presentation/routes/routes_constants.dart';
import 'package:poke_app/presentation/details.dart';
import 'package:poke_app/presentation/home.dart';
import 'package:provider/provider.dart';

GoRouter createRouter({
  String initial = '/',
  bool routerNeglect = true,
  bool debugLogDiagnostics = kDebugMode,
  List<NavigatorObserver>? observers,
}) {
  return GoRouter(
    debugLogDiagnostics: debugLogDiagnostics,
    errorBuilder: (context, __) => Material(
      child: Center(
        child: Text(
          '404',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    ),
    routerNeglect: routerNeglect,
    initialLocation: initial,
    observers: observers,
    routes: [
      GoRoute(
        name: 'home',
        path: homeRoute,
        builder: (_, __) => const PokemonHome(),
        routes: [
          GoRoute(
            name: 'pokemon_details',
            path: '$detailsRoute/:id',
            redirect: (context, state) {
              final id = state.pathParameters['id'];
              if (id == null || int.tryParse(id) == null) {
                return homeRoute;
              }
              return null;
            },
            builder: (_, state) => Provider(
              create: (context) => PokemonDetailStore(
                id: int.parse(state.pathParameters['id']!),
                repository: context.read<PokemonRepository>(),
              ),
              child: PokemonDetailsScreen(
                pokemon: state.extra is PokemonShallow? 
                  ? state.extra as PokemonShallow? 
                  : null,
              ),
            )
          ),
        ],
      ),
    ],
  );
}
