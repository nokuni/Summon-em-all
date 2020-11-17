//
//  Pokedex+CoreDataProperties.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//
//

import Foundation
import CoreData


extension Pokedex {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pokedex> {
        return NSFetchRequest<Pokedex>(entityName: "Pokedex")
    }

    @NSManaged public var name: String
    @NSManaged public var image: Data?
    @NSManaged public var id: Int32
    @NSManaged public var firstType: String
    var pokemonFirstType: Types {
        set {
            firstType = newValue.rawValue
        }
        get {
            Types(rawValue: firstType) ?? .noType
        }
    }
    @NSManaged public var secondType: String
    var pokemonSecondType: Types {
        set {
            secondType = newValue.rawValue
        }
        get {
            Types(rawValue: secondType) ?? .noType
        }
    }

}

extension Pokedex : Identifiable {

}
