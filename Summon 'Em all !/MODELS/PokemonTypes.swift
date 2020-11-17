//
//  PokemonTypes.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import Foundation

import SwiftUI

enum Types : String {
    case grass = "Grass"
    case fire = "Fire"
    case water = "Water"
    case poison = "Poison"
    case bug = "Bug"
    case flying = "Flying"
    case normal = "Normal"
    case electric = "Electric"
    case ground = "Ground"
    case fairy = "Fairy"
    case fighting = "Fighting"
    case psychic = "Psychic"
    case rock = "Rock"
    case steel = "Steel"
    case ice = "Ice"
    case ghost = "Ghost"
    case dragon = "Dragon"
    case noType = ""
    
    var colorType: Gradient {
        switch self {
        case .grass:
            return .grassGreenGradient
        case .fire:
            return .fireRedGradient
        case .water:
            return .waterBlueGradient
        case .poison:
            return .poisonPurpleGradient
        case .bug:
            return .bugGreenGradient
        case .flying:
            return .flyingGradient
        case .normal:
            return .normalGradient
        case .electric:
            return .electricGradient
        case .ground:
            return .groundGradient
        case .fairy:
            return .fairyGradient
        case .fighting:
            return .fightingGradient
        case .psychic:
            return .psychicGradient
        case .rock:
            return .rockGradient
        case .steel:
            return .steelGradient
        case .ice:
            return .iceGradient
        case .ghost:
            return .ghostGradient
        case .dragon:
            return .dragonGradient
        case .noType:
            return .white
        }
    }
}
