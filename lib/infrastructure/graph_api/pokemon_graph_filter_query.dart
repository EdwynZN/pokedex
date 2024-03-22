const String filterQuery = r'''
query filterQuery {
  types: pokemon_v2_type(where: {pokemon_v2_generation: {id: {_lte: 2}}}) {
    id
    value: name
  }
  colors: pokemon_v2_pokemoncolor(distinct_on: name) {
    id
    value: name
  }
  generations: pokemon_v2_generation(where: {id: {_lte: 2}}) {
    id
    value: name
  }
}
''';
