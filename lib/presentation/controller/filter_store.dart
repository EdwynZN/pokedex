import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/filter_repository.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';

part 'filter_store.g.dart';

class FilterStore = _FilterStore with _$FilterStore;

abstract class _FilterStore with Store {
  final FilterRepository _filterRepository;
  late ReactionDisposer _disposer;

  _FilterStore({
    required FilterRepository filterRepository,
  }) : _filterRepository = filterRepository {
    _future = ObservableFuture(_filterRepository.getFilters());
    _disposer = reaction<PokemonFilter?>(
      (_) => _future.value?.fold((l) => null, (r) => r),
      (pokFilter) {
        if (pokFilter == null) {
          return;
        }
        _updateFilter(pokFilter);
      },
      equals: (curr, prev) => curr == prev || curr == null,
    );
  }

  late ObservableFuture<Either<DomainFailure, PokemonFilter>> _future;

  @readonly
  PokemonFilter? _filters;

  @readonly
  PokemonFilter _selectedFilter = const PokemonFilter();

  @readonly
  bool _onlyFavorites = false;

  @computed
  bool get isLoading => _future.status == FutureStatus.pending;

  @computed
  bool get hasError => _future.status == FutureStatus.rejected;

  @computed
  Object? get error => _future.error;

  @computed
  bool get hasFilterType => _selectedFilter.types.isNotEmpty;

  @computed
  bool get hasFilterColor => _selectedFilter.colors.isNotEmpty;

  @computed
  bool get hasFilterGeneration => _selectedFilter.generations.isNotEmpty;

  @action
  void toggleFavoritesFilter() {
    _onlyFavorites = !_onlyFavorites;
  }

  @action
  void updateTypes(Set<PokemonAttribute> types) {
    _selectedFilter = _selectedFilter.copyWith(types: types);
  }

  @action
  void updateColors(Set<PokemonAttribute> colors) {
    _selectedFilter = _selectedFilter.copyWith(colors: colors);
  }

  @action
  void updateGenerations(Set<PokemonAttribute> generations) {
    _selectedFilter = _selectedFilter.copyWith(generations: generations);
  }

  @action
  void refresh() {
    _future = ObservableFuture(_filterRepository.getFilters());
  }

  @action
  void _updateFilter(PokemonFilter filters) {
    _filters = filters;
  }

  void dispose() {
    _disposer();
  }
}
