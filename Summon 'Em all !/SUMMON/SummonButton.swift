//
//  SummonButton.swift
//  Summon 'Em all !
//
//  Created by Yann Christophe Maertens on 17/11/2020.
//

import SwiftUI

struct SummonButton: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @State var pokemonName = allPokemons[0].name
    @State var pokemonSprite = allPokemons[0].image
    @State var pokemonOpacity: Double = 0
    var pokemonImage : Data = .init(count: 1)
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            VStack {
                // show the summoned Pokemon name and sprite
                Text(pokemonName).font(.system(size: 50)).opacity(pokemonOpacity)
                ZStack {
                    Image("pokeball").resizable().frame(width: 350, height: 350).opacity(0.4).padding()
                    Image(uiImage: pokemonSprite!).renderingMode(.original).resizable().frame(width: 250, height: 250).opacity(pokemonOpacity)
                }
                
                //summon button
                Button(action: {
                    addPokemon()
                }) {
                    ZStack {
                        Rectangle().frame(width: 160, height: 65).cornerRadius(10).offset(x: 2, y: 5).foregroundColor(Color.offBlack)
                        Text("SUMMON").font(.system(size: 30)).padding(12).foregroundColor(Color.white).background(Color.red).cornerRadius(10)
                    }
                }.buttonStyle(CustomButtonStyle())
            }
            
            .navigationTitle("Summon")
        }
    }
    // do try catch saver
    func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
            fatalError("Unexpected Error \(error)")
        }
    }
    // add a random Pokemon to the collection
    func addPokemon() {
        //if pokeballs[0].pokeball > 0 {
            let newPokedex = Pokedex(context: viewContext)
            
            newPokedex.name = allPokemons.randomElement()?.name ?? "Unamed"
            for i in 0..<allPokemons.count {
                if allPokemons[i].name == newPokedex.name {
                    newPokedex.image = allPokemons[i].image.pngData()
                    newPokedex.id = Int32(allPokemons[i].id)
                    newPokedex.firstType = allPokemons[i].types[0].rawValue
                    newPokedex.secondType = allPokemons[i].types[1].rawValue
                }
            }
            withAnimation(.linear(duration: 0)) {
                self.pokemonOpacity += 1
            }
            pokemonName = newPokedex.name
            pokemonSprite = UIImage(data: newPokedex.image!)
            //pokeballs[0].pokeball -= 1
            //pokeballs[0].pokeballTimer += 10
            
            saveContext()
        //}
    }
}

struct SummonButton_Previews: PreviewProvider {
    static var previews: some View {
        SummonButton()
    }
}

struct CustomButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .frame(width: 126, height: 40)
            //.padding()
            .foregroundColor(Color.blue)
            .background(Color.white)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
        
    }
}
