//
//  ColorData.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

extension Color {
    static let grassGreen = Color(red: 155 / 255, green: 204 / 255, blue: 80 / 255)
    static let fireRed = Color(red: 253 / 255, green: 125 / 255, blue: 36 / 255)
    static let waterBlue = Color(red: 69 / 255, green: 146 / 255, blue: 196 / 255)
    static let poisonPurple = Color(red: 185 / 255, green: 127 / 255, blue: 201 / 255)
    static let bugGreen = Color(red: 114 / 255, green: 159 / 255, blue: 63 / 255)
    static let flyingBlue = Color(red: 61 / 255, green: 199 / 255, blue: 239 / 255)
    static let flyingGray = Color(red: 189 / 255, green: 185 / 255, blue: 184 / 255)
    static let normalGray = Color(red: 164 / 255, green: 172 / 255, blue: 175 / 255)
    static let electricYellow = Color(red: 238 / 255, green: 213 / 255, blue: 53 / 255)
    static let groundYellow = Color(red: 247 / 255, green: 222 / 255, blue: 63 / 255)
    static let groundBrown = Color(red: 171 / 255, green: 152 / 255, blue: 66 / 255)
    static let fairyPink = Color(red: 253 / 255, green: 185 / 255, blue: 233 / 255)
    static let fightingBrown = Color(red: 213 / 255, green: 103 / 255, blue: 35 / 255)
    static let psychicPink = Color(red: 243 / 255, green: 102 / 255, blue: 185 / 255)
    static let rockBrown = Color(red: 163 / 255, green: 140 / 255, blue: 33 / 255)
    static let steelGray = Color(red: 158 / 255, green: 183 / 255, blue: 184 / 255)
    static let iceBlue = Color(red: 81 / 255, green: 196 / 255, blue: 231 / 255)
    static let ghostPurple = Color(red: 123 / 255, green: 98 / 255, blue: 163 / 255)
    static let dragonBlue = Color(red: 83 / 255, green: 164 / 255, blue: 207 / 255)
    static let dragonRed = Color(red: 241 / 255, green: 110 / 255, blue: 87 / 255)
    static var lightBlack = Color(red: 33 / 255, green: 29 / 255, blue: 39 / 255)
    static let offBlack = Color(red: 45 / 255, green: 43 / 255, blue: 43 / 255)
}

extension Gradient {
    static let grassGreenGradient = Gradient(colors: [.grassGreen, .grassGreen])
    static let fireRedGradient = Gradient(colors: [.fireRed, .fireRed])
    static let waterBlueGradient = Gradient(colors: [.waterBlue, .waterBlue])
    static let poisonPurpleGradient = Gradient(colors: [.poisonPurple, .poisonPurple])
    static let bugGreenGradient = Gradient(colors: [.bugGreen, .bugGreen])
    static let flyingGradient = Gradient(colors: [.flyingBlue, .flyingGray])
    static let normalGradient = Gradient(colors: [.normalGray, .normalGray])
    static let electricGradient = Gradient(colors: [.electricYellow, .electricYellow])
    static let groundGradient = Gradient(colors: [.groundYellow, .groundBrown])
    static let fairyGradient = Gradient(colors: [.fairyPink, .fairyPink])
    static let fightingGradient = Gradient(colors: [.fightingBrown, .fightingBrown])
    static let psychicGradient = Gradient(colors: [.psychicPink, .psychicPink])
    static let rockGradient = Gradient(colors: [.rockBrown, .rockBrown])
    static let steelGradient = Gradient(colors: [.steelGray, .steelGray])
    static let iceGradient = Gradient(colors: [.iceBlue, .iceBlue])
    static let ghostGradient = Gradient(colors: [.ghostPurple, .ghostPurple])
    static let dragonGradient = Gradient(colors: [.dragonBlue, .dragonRed])
    static let white = Gradient(colors: [.white, .white])
}
