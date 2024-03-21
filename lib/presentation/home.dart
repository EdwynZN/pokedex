import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_app/assets/pokemon_icons.dart';
import 'package:poke_app/controller/pokedex_store.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/presentation/widget/error_header.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:poke_app/utils/string_extensions.dart';
import 'package:provider/provider.dart';

void _usePagination({
  required PokedexStore paging,
  required ScrollController controller,
  double viewportFactor = 0.5,
}) {
  useEffect(() {
    void listenScroll() {
      final position = controller.position;
      if (!paging.isLoading &&
          position.extentAfter <
              (position.viewportDimension * viewportFactor)) {
        paging.retrieveNextPage();
      }
    }

    controller.addListener(listenScroll);
    return () => controller.removeListener(listenScroll);
  }, [controller, paging]);
}

class PokemonHome extends HookWidget {
  const PokemonHome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController(keys: const []);
    final pokemonNotifier = context.watch<PokedexStore>();
    _usePagination(paging: pokemonNotifier, controller: controller);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Scrollbar(
        controller: controller,
        child: _PokemonListView(scrollController: controller),
      ),
      floatingActionButton: Observer(
        builder: (_) {
          return pokemonNotifier.pokemons.isEmpty 
            ? const SizedBox()
            : FloatingActionButton(
              onPressed: () => controller.animateTo(
                0,
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOutCubicEmphasized,
              ),
              child: const Icon(Icons.arrow_upward_outlined),
            );
        },
      ),
    );
  }
}

class _PokemonListView extends StatelessObserverWidget {
  final ScrollController? scrollController;
  // ignore: use_super_parameters
  const _PokemonListView({Key? key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.watch<PokedexStore>();
    if (!store.hasValue) {
      if (store.isLoading) {
        final theme = Theme.of(context);
        return Center(
          child: SpinKitDoubleBounce(
            color: theme.colorScheme.primary,
            size: 72.0,
          ),
        );
      } else if (store.hasError) {
        return Align(
          alignment: Alignment.topCenter,
          child: ErrorHeader(
            title: 'There is a problem fetching all the pokemons, try again',
            onPressed: store.refresh,
          ),
        );
      }
    }
    final pokemons = store.pokemons;
    bool isValid = pokemons.isNotEmpty;
    return ListView.builder(
      key: const ValueKey('PokemonListView'),
      controller: scrollController,
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0.0),
      itemBuilder: (context, index) {
        if (isValid && index < pokemons.length) {
          return _PokemonTile(pokemon: pokemons[index]);
        } else if (index == pokemons.length) {
          return _LastItem(index: index);
        }
        return null;
      },
    );
  }
}

class _LastItem extends StatelessObserverWidget {
  final int index;

  // ignore: unused_element
  const _LastItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final store = context.watch<PokedexStore>();
    final pokemons = store.pokemons;
    if (store.isLoading) {
      return const Align(
        alignment: Alignment.bottomCenter,
        child: LinearProgressIndicator(),
      );
    } else if (store.hasError) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        alignment: Alignment.bottomCenter,
        child: OutlinedButton.icon(
          onPressed: store.retrieveNextPage,
          icon: const Icon(Icons.restart_alt_outlined),
          label: const Text('Reintentar'),
        ),
      );
    } else if (pokemons.isEmpty && index == 0) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Image(
              image: AssetImage(PokemonIcons.pokeball),
              height: 72.0,
              width: 72.0,
            ),
            gap24,
            Text(
              'There are no pokemons to catch!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }
    return const SizedBox();
  }
}

class _PokemonTile extends StatelessWidget {
  final PokemonShallow pokemon;

  const _PokemonTile({
    // ignore: unused_element
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        tileColor: ElevationOverlay.applySurfaceTint(
          scheme.background,
          scheme.surfaceTint,
          4.0,
        ),
        visualDensity: const VisualDensity(vertical: 2.0),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(color: scheme.onSurface),
        ),
        leading: Container(
          height: 48.0,
          width: 48.0,
          alignment: Alignment.center,
          child: SvgPicture.network(
            pokemon.image,
            semanticsLabel: pokemon.name,
            height: 48.0,
            width: 48.0,
            allowDrawingOutsideViewBox: false,
            fit: BoxFit.contain,
            placeholderBuilder: (BuildContext context) => const Image(
              image: AssetImage(PokemonIcons.pokeball),
              height: 32.0,
              width: 32.0,
            ),
          ),
        ),
        minLeadingWidth: 4.0,
        title: Text(
          pokemon.name.toTitleCase(),
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '#${pokemon.id}',
          style: const TextStyle(fontSize: 12.0, color: Color(0xFF666666)),
        ),
        onTap: () => context.pushNamed(
          'pokemon_details',
          pathParameters: {'id': pokemon.id.toString()},
        ),
      ),
    );
  }
}
