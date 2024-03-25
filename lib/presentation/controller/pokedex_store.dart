import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/utils/analytics.dart';

part 'pokedex_store.g.dart';

class PokedexStore = _PokedexStore with _$PokedexStore;

abstract class _PokedexStore with Store {
  final Analytics _analytics;
  final int _pageSize = 60;
  final PokemonRepository _repository;
  late ReactionDisposer _disposer;

  _PokedexStore(
    this._repository,
    this._analytics,
  ) {
    _disposer = when(
      (_) => !_isLoading && !hasError && pokemons.length < _pageSize,
      () {
        runInAction(() => _lastPage = true);
      },
    );
    _fetch();
  }

  PokemonFilter _filter = const PokemonFilter();
  bool _onlyFavorites = false;
  String _pokemonSearch = '';

  final ObservableList<SinglePokemonStore> _pokemons =
      ObservableList<SinglePokemonStore>();

  @readonly
  bool _isLoading = true;

  @readonly
  bool _lastPage = false;

  @readonly
  Object? _error;

  @computed
  bool get hasError => _error != null;

  @computed
  bool get hasValue => _pokemons.isNotEmpty;

  @computed
  List<SinglePokemonStore> get pokemons => _pokemons;

  @action
  void updateFavorite({required int id, required bool isFavorite}) {
    final index = _pokemons.indexWhere((element) => element.pokemon.id == id);
    if (index == -1) {
      /// if the index is not found maybe the cache is invalid and needs to check again
      _refresh(false, _pokemons.length);
      return;
    }
    if (_onlyFavorites && !isFavorite) {
      pokemons.removeAt(index);
    } else {
      final pokemonObs = pokemons[index];
      pokemonObs._updateFavorite(isFavorite: isFavorite);
    }
  }

  @action
  Future<void> retrieveNextPage() async {
    if (_isLoading || _lastPage) {
      return;
    }
    _isLoading = true;
    _error = null;
    await _fetch();
  }

  Future<List<PokemonShallow>> __fetchPage(int offset, [int? limit]) async {
    final fetch = await _repository.getPage(
      offset: offset,
      limit: limit ?? _pageSize,
      filter: _filter,
      query: _pokemonSearch,
      onlyFavorites: _onlyFavorites,
    );
    return fetch.fold((l) => throw l, (r) => r);
  }

  @action
  Future<void> _fetch() async {
    try {
      final result = await __fetchPage(pokemons.length);
      pokemons.addAll(result.map((pokemon) => SinglePokemonStore(
            _repository,
            pokemon,
          )));
    } catch (e) {
      _error = e;
    } finally {
      _isLoading = false;
    }
  }

  Future<void> refresh() async {
    if (_isLoading) return;
    _refresh();
  }

  Future<void> changeFilter(PokemonFilter filter) async {
    if (_filter == filter) {
      return;
    }
    _filter = filter;
    _refresh(true);
  }

  Future<void> changeFavoritesFilter(bool onlyFavorites) async {
    if (_onlyFavorites == onlyFavorites) {
      return;
    }
    _onlyFavorites = onlyFavorites;
    _refresh(true);
  }

  Future<void> changeSearch(String searchQuery) async {
    if (searchQuery == _pokemonSearch) {
      return;
    }
    _analytics.logSearch(searchQuery);
    _pokemonSearch = searchQuery;
    _refresh(true);
  }

  @action
  Future<void> _refresh([bool clearOnError = false, int? limit]) async {
    _isLoading = true;
    _error = null;
    try {
      final result = await __fetchPage(0, limit);
      pokemons
        ..clear()
        ..addAll(result.map((pokemon) => SinglePokemonStore(
              _repository,
              pokemon,
            )));
      _lastPage = false;
      _disposer();
      _disposer = when(
        (_) => !_isLoading && !hasError && pokemons.length < _pageSize,
        () {
          runInAction(() => _lastPage = true);
        },
      );
    } catch (e) {
      _error = e;
      if (clearOnError) {
        pokemons.clear();
      }
    } finally {
      _isLoading = false;
    }
  }

  void dispose() {
    _disposer();
  }
}

class SinglePokemonStore = _SinglePokemonStore with _$SinglePokemonStore;

abstract class _SinglePokemonStore with Store {
  final PokemonRepository _repository;

  _SinglePokemonStore(this._repository, this._pokemon);

  @readonly
  PokemonShallow _pokemon;

  @observable
  ObservableFuture<Pokemon>? _future;

  @computed
  bool get isLoading => _future?.status == FutureStatus.pending;

  @action
  Future<void> updateFavorite() async {
    if (isLoading) {
      return;
    }
    final future = ObservableFuture(
      _repository
          .changeFavorite(id: _pokemon.id, isFavorite: !_pokemon.isFavorite)
          .then((value) => value.fold((l) => throw l, (r) => r)),
    );
    await asyncWhen((p0) => future.status != FutureStatus.pending);
    if (future.status == FutureStatus.fulfilled) {
      final pokemon = future.value!;
      _pokemon = _pokemon.copyWith(isFavorite: pokemon.isFavorite);
    }
  }

  @action
  Future<void> _updateFavorite({required bool isFavorite}) async {
    _pokemon = _pokemon.copyWith(isFavorite: isFavorite);
  }
}
