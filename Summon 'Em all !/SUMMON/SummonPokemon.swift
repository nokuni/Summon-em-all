//
//  SummonPokemon.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

struct SummonPokemon: View {
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        SummonButton()
    }
}

struct SummonPokemon_Previews: PreviewProvider {
    static var previews: some View {
        SummonPokemon()
    }
}
