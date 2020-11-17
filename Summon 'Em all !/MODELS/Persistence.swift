//
//  Persistence.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import Foundation

import CoreData

class PersistenceController {
    static let shared = PersistenceController()
    
    let container : NSPersistentContainer
    
    init(in memory: Bool = false) {
        container = NSPersistentContainer(name: "Summon 'Em all !")
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unexpected Error \(error)")
            }
        }
    }
}
