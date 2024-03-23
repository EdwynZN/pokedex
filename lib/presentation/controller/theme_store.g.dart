// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStore on _ThemeStore, Store {
  Computed<ThemeData>? _$lightComputed;

  @override
  ThemeData get light => (_$lightComputed ??=
          Computed<ThemeData>(() => super.light, name: '_ThemeStore.light'))
      .value;
  Computed<ThemeData>? _$darkComputed;

  @override
  ThemeData get dark => (_$darkComputed ??=
          Computed<ThemeData>(() => super.dark, name: '_ThemeStore.dark'))
      .value;

  late final _$_themeAtom = Atom(name: '_ThemeStore._theme', context: context);

  @override
  ThemeFlex get _theme {
    _$_themeAtom.reportRead();
    return super._theme;
  }

  @override
  set _theme(ThemeFlex value) {
    _$_themeAtom.reportWrite(value, super._theme, () {
      super._theme = value;
    });
  }

  late final _$_modeAtom = Atom(name: '_ThemeStore._mode', context: context);

  ThemeMode get mode {
    _$_modeAtom.reportRead();
    return super._mode;
  }

  @override
  ThemeMode get _mode => mode;

  @override
  set _mode(ThemeMode value) {
    _$_modeAtom.reportWrite(value, super._mode, () {
      super._mode = value;
    });
  }

  late final _$_ThemeStoreActionController =
      ActionController(name: '_ThemeStore', context: context);

  @override
  void setMode(ThemeMode newMode) {
    final _$actionInfo =
        _$_ThemeStoreActionController.startAction(name: '_ThemeStore.setMode');
    try {
      return super.setMode(newMode);
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeColor() {
    final _$actionInfo = _$_ThemeStoreActionController.startAction(
        name: '_ThemeStore.changeColor');
    try {
      return super.changeColor();
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
light: ${light},
dark: ${dark}
    ''';
  }
}
