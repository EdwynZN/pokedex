// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FilterStore on _FilterStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_FilterStore.isLoading'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_FilterStore.hasError'))
      .value;
  Computed<Object?>? _$errorComputed;

  @override
  Object? get error => (_$errorComputed ??=
          Computed<Object?>(() => super.error, name: '_FilterStore.error'))
      .value;
  Computed<bool>? _$hasFilterTypeComputed;

  @override
  bool get hasFilterType =>
      (_$hasFilterTypeComputed ??= Computed<bool>(() => super.hasFilterType,
              name: '_FilterStore.hasFilterType'))
          .value;
  Computed<bool>? _$hasFilterColorComputed;

  @override
  bool get hasFilterColor =>
      (_$hasFilterColorComputed ??= Computed<bool>(() => super.hasFilterColor,
              name: '_FilterStore.hasFilterColor'))
          .value;
  Computed<bool>? _$hasFilterGenerationComputed;

  @override
  bool get hasFilterGeneration => (_$hasFilterGenerationComputed ??=
          Computed<bool>(() => super.hasFilterGeneration,
              name: '_FilterStore.hasFilterGeneration'))
      .value;

  late final _$_filtersAtom =
      Atom(name: '_FilterStore._filters', context: context);

  PokemonFilter? get filters {
    _$_filtersAtom.reportRead();
    return super._filters;
  }

  @override
  PokemonFilter? get _filters => filters;

  @override
  set _filters(PokemonFilter? value) {
    _$_filtersAtom.reportWrite(value, super._filters, () {
      super._filters = value;
    });
  }

  late final _$_selectedFilterAtom =
      Atom(name: '_FilterStore._selectedFilter', context: context);

  PokemonFilter get selectedFilter {
    _$_selectedFilterAtom.reportRead();
    return super._selectedFilter;
  }

  @override
  PokemonFilter get _selectedFilter => selectedFilter;

  @override
  set _selectedFilter(PokemonFilter value) {
    _$_selectedFilterAtom.reportWrite(value, super._selectedFilter, () {
      super._selectedFilter = value;
    });
  }

  late final _$_onlyFavoritesAtom =
      Atom(name: '_FilterStore._onlyFavorites', context: context);

  bool get onlyFavorites {
    _$_onlyFavoritesAtom.reportRead();
    return super._onlyFavorites;
  }

  @override
  bool get _onlyFavorites => onlyFavorites;

  @override
  set _onlyFavorites(bool value) {
    _$_onlyFavoritesAtom.reportWrite(value, super._onlyFavorites, () {
      super._onlyFavorites = value;
    });
  }

  late final _$_FilterStoreActionController =
      ActionController(name: '_FilterStore', context: context);

  @override
  void toggleFavoritesFilter() {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore.toggleFavoritesFilter');
    try {
      return super.toggleFavoritesFilter();
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTypes(Set<PokemonAttribute> types) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore.updateTypes');
    try {
      return super.updateTypes(types);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateColors(Set<PokemonAttribute> colors) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore.updateColors');
    try {
      return super.updateColors(colors);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateGenerations(Set<PokemonAttribute> generations) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore.updateGenerations');
    try {
      return super.updateGenerations(generations);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updateFilter(PokemonFilter filters) {
    final _$actionInfo = _$_FilterStoreActionController.startAction(
        name: '_FilterStore._updateFilter');
    try {
      return super._updateFilter(filters);
    } finally {
      _$_FilterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hasError: ${hasError},
error: ${error},
hasFilterType: ${hasFilterType},
hasFilterColor: ${hasFilterColor},
hasFilterGeneration: ${hasFilterGeneration}
    ''';
  }
}
