const pokemonsQuery = r'''
query pokemonsQuery($offset: Int! = 0, $limit: Int! = 60) {
  pokemons: pokemon_v2_pokemonspecies(
    limit: $limit,
    offset: $offset,
    where: {
      pokemon_v2_generation: {
        name: {
          _in: ["generation-i", "generation-ii"]
        }
      }
    },
    order_by: {id: asc}
  ) {
    name
    id
    color: pokemon_v2_pokemoncolor {
      name
    }
    generation: pokemon_v2_generation {
      name
    }
  }
}
''';

const pokemonDetailQuery = r'''
query singlePokemonQuery($id: Int!) {
  pokemon: pokemon_v2_pokemonspecies(where: {pokemon_v2_generation: {name: {_in: ["generation-i", "generation-ii", "generation-iii"]}}, _and: {id: {_eq: $id}}}) {
    id
    name
    generation_id
    details: pokemon_v2_pokemons(limit: 1) {
      height
      base_experience
      weight
      abilities: pokemon_v2_pokemonabilities {
        secret: is_hidden
        ability: pokemon_v2_ability {
          name
        }
      }
      moves: pokemon_v2_pokemonmoves(distinct_on: move_id) {
        move: pokemon_v2_move {
          name
        }
      }
      types: pokemon_v2_pokemontypes {
        type: pokemon_v2_type {
          name
        }
      }
      stats: pokemon_v2_pokemonstats {
        stat: pokemon_v2_stat {
          name
        }
        value: base_stat
      }
      sprites: pokemon_v2_pokemonsprites {
        sprites
      }
    }
    color: pokemon_v2_pokemoncolor {
      value: name
    }
  }
}
''';
