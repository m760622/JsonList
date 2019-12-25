//  Created by Cameron  Partee on 12/24/19.
//  Copyright © 2019 Cameron Partee. All rights reserved.

import Foundation
import SwiftUI
import Combine

// used to make the web requests to fetch the JSON from the PokeAPI
// and parse into a list

class NetworkingManager : ObservableObject {
    var willChange = PassthroughSubject<NetworkingManager, Never>()
    
    var pokeList = PokeList(result: []) {
        willSet {
            willChange.send(self)
        }
    }
    
    init() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokeList.self, from: data)
            
            DispatchQueue.main.async {
                self.pokeList = pokemonList
            }
        }.resume()
    }
    
    
}
