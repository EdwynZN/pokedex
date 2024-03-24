import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:poke_app/assets/pokemon_animations.dart';
import 'package:poke_app/assets/pokemon_icons.dart';

void main() {
  test('fintech_assets assets test', () {
    expect(File(PokemonAnimations.pokeball).existsSync(), true);
    expect(File(PokemonIcons.pokeball).existsSync(), true);
  });
}