// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokedexStore on _PokedexStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_PokedexStore.hasError'))
      .value;
  Computed<bool>? _$hasValueComputed;

  @override
  bool get hasValue => (_$hasValueComputed ??=
          Computed<bool>(() => super.hasValue, name: '_PokedexStore.hasValue'))
      .value;
  Computed<List<PokemonShallow>>? _$pokemonsComputed;

  @override
  List<PokemonShallow> get pokemons => (_$pokemonsComputed ??=
          Computed<List<PokemonShallow>>(() => super.pokemons,
              name: '_PokedexStore.pokemons'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_PokedexStore._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_lastPageAtom =
      Atom(name: '_PokedexStore._lastPage', context: context);

  bool get lastPage {
    _$_lastPageAtom.reportRead();
    return super._lastPage;
  }

  @override
  bool get _lastPage => lastPage;

  @override
  set _lastPage(bool value) {
    _$_lastPageAtom.reportWrite(value, super._lastPage, () {
      super._lastPage = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: '_PokedexStore._error', context: context);

  Object? get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  Object? get _error => error;

  @override
  set _error(Object? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$retrieveNextPageAsyncAction =
      AsyncAction('_PokedexStore.retrieveNextPage', context: context);

  @override
  Future<void> retrieveNextPage() {
    return _$retrieveNextPageAsyncAction.run(() => super.retrieveNextPage());
  }

  late final _$_fetchAsyncAction =
      AsyncAction('_PokedexStore._fetch', context: context);

  @override
  Future<void> _fetch() {
    return _$_fetchAsyncAction.run(() => super._fetch());
  }

  late final _$_refreshAsyncAction =
      AsyncAction('_PokedexStore._refresh', context: context);

  @override
  Future<void> _refresh([bool clearOnError = false]) {
    return _$_refreshAsyncAction.run(() => super._refresh(clearOnError));
  }

  @override
  String toString() {
    return '''
hasError: ${hasError},
hasValue: ${hasValue},
pokemons: ${pokemons}
    ''';
  }
}
