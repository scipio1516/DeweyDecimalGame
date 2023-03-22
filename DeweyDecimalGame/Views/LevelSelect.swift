//
//  LevelSelect.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/28/23.
//

import SwiftUI

struct LevelSelect: View {
    
    var body: some View {
        HStack {
            VStack {
                Text("Order by Call ID.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                NavigationLink(destination: GameView(bookshelfLength: 3, isDeweyOrNot: false),
                               label: {MainButton(text: "Three Books")})
                .fontWeight(.bold)
                NavigationLink(destination: GameView(bookshelfLength: 8, isDeweyOrNot: false),
                               label: {MainButton(text: "Eight Books")})
                .fontWeight(.bold)
                .padding()
                 
            }
            VStack {
                Text("Order by Dewey Decimal Number.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                NavigationLink(destination: GameView(bookshelfLength: 3, isDeweyOrNot: true),
                               label: {MainButton(text: "Three Books")})
                .fontWeight(.bold)
                NavigationLink(destination: GameView(bookshelfLength: 8, isDeweyOrNot: true),
                               label: {MainButton(text: "Eight Books")})
                .fontWeight(.bold)
                .padding()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))

    }
}

struct LevelSelect_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelect().environmentObject(UserData(username: "Default"))
    }
}
