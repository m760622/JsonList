//  Created by Cameron  Partee on 12/24/19.
//  Copyright © 2019 Cameron Partee. All rights reserved.

import Foundation

/*
{
"count": 964,
"next": "https://pokeapi.co/api/v2/pokemon?offset=60&limit=60",
"previous": null,
"results": [
  {
    "name": "bulbasaur",
    "url": "https://pokeapi.co/api/v2/pokemon/1/"
  },
  {
    "name": "ivysaur",
    "url": "https://pokeapi.co/api/v2/pokemon/2/"
  },
  {
    "name": "venusaur",
    "url": "https://pokeapi.co/api/v2/pokemon/3/"
  },
*/

// parent struct that has an array of base structs
struct PokeList: Decodable {
    var result: [Poke]
}

// base struct
struct Poke: Decodable {
    var name: String
    var url: String
}

