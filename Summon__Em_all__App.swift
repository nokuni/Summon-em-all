//
//  Summon__Em_all__App.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

@main
struct Summon__Em_all__App: App {
    
    let persistentContainer = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            TabBar().environment(\.managedObjectContext, persistentContainer.container.viewContext)
        }
    }
}
