//
//  PokemonStructure.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import Foundation
import UIKit

struct PokemonInfo: Identifiable {
    var uuid = UUID()
    var id: Int
    var name: String
    var image: UIImage!
    var types: [Types]
}
