// Created by Cameron  Partee on 12/24/19.
//  Copyright © 2019 Cameron Partee. All rights reserved.

import SwiftUI

struct ContentView: View {
    
    @State var networkingManager = NetworkingManager()
    
    var body: some View {
        List(networkingManager.pokeList.result, id:\.url) { pokemon in
            Text(pokemon.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
