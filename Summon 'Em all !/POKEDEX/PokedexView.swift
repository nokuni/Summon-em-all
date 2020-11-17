//
//  PokedexView.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

struct PokedexView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Pokedex.id, ascending: true)])
    var pokedex : FetchedResults<Pokedex>
    
    var pokemonImage : Data = .init(count: 1)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(pokedex) { dex in
                    HStack {
                        Text("\(dex.id)").font(.system(size: 25))
                        Image(uiImage: UIImage(data: dex.image ?? pokemonImage)!).resizable().frame(width: 100, height: 100).padding()
                        VStack {
                            Text(dex.name).font(.system(size: 20)).padding()
                            HStack {
                                Text(dex.firstType).padding(7).foregroundColor(Color.white).background(LinearGradient(gradient: dex.pokemonFirstType.colorType, startPoint: .top, endPoint: .bottom)).cornerRadius(5)
                                if dex.pokemonSecondType.colorType != .white {
                                    Text(dex.secondType).padding(7).foregroundColor(Color.white).background(LinearGradient(gradient: dex.pokemonSecondType.colorType, startPoint: .top, endPoint: .bottom)).cornerRadius(5)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Pokedex (\(pokedex.count) / 151)")
            .navigationBarItems(trailing: Button(action: {
                resetPokedex()
            }) {
                Text("Reset Pokedex")
            })
        }
    }
    func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
            fatalError("Unexpected Error \(error)")
        }
    }
    // Reset the Pokedex
    func resetPokedex() {
        for i in pokedex {
            viewContext.delete(i)
        }
        saveContext()
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
