//
//  TabBar.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

struct TabBar: View {
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        TabView {
            SummonPokemon().tabItem {
                Image(systemName: "flame")
                Text("Summon")
            }
            PokedexView().tabItem {
                Image(systemName: "tray.2")
                Text("Pokedex")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
