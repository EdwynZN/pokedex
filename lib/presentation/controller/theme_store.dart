import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/utils/theme.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  _ThemeStore();

  @observable
  ThemeFlex _theme = ThemeFlex();

  @computed
  ThemeData get light => _theme.light;

  @computed
  ThemeData get dark => _theme.dark;

  @readonly
  ThemeMode _mode = ThemeMode.system;

  @action
  void setMode(ThemeMode newMode) {
    _mode = newMode;
  }

  @action
  void changeColor() {
    _theme = ThemeFlex(FlexScheme.barossa);
  }
}
