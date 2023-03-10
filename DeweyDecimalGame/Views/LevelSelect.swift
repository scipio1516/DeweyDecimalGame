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
                Text("Order by Author name.")
                NavigationLink(destination: GameView(bookShelf: [Book(id: UUID(), bookTitle: "BookOne", bookColor: redColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: 0), Book(id: UUID(), bookTitle: "BookTwo", bookColor: greenColor, authorName: "Author Two", callID: "AUT", deweyDecimalNumber: 0), Book(id: UUID(), bookTitle: "BookThree", bookColor: pureBlueColor, authorName: "Author Three", callID: "AUT", deweyDecimalNumber: 0)], isDeweyOrNot: false),
                               label: {MainButton(text: "Three Books")})
                NavigationLink(destination: BookShelf_4(),
                               label: {MainButton(text: "Four Books")})
                NavigationLink(destination: BookShelf_5(),
                               label: {MainButton(text: "Five Books")})
                Text("Ultimate Challenge!")
                NavigationLink(destination: GameView(bookShelf: fictionBookDatabase, isDeweyOrNot: false),
                               label: {MainButton(text: "Eight Books")})
                 
            }
            VStack {
                Text("Order by Call Number.")
                NavigationLink(destination: GameView(bookShelf: [Book(id: UUID(), bookTitle: "BookOne", bookColor: redColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: 33.333), Book(id: UUID(), bookTitle: "BookTwo", bookColor: greenColor, authorName: "Author Two", callID: "AUT", deweyDecimalNumber: 23.333), Book(id: UUID(), bookTitle: "BookThree", bookColor: pureBlueColor, authorName: "Author Three", callID: "AUT", deweyDecimalNumber: 13.333)], isDeweyOrNot: true),
                               label: {MainButton(text: "Three Books")})
                NavigationLink(destination: BookShelf_4(),
                               label: {MainButton(text: "Four Books")})
                NavigationLink(destination: BookShelf_5(),
                               label: {MainButton(text: "Five Books")})
                Text("Ultimate Challenge!")
                NavigationLink(destination: BookShelf_8(),
                               label: {MainButton(text: "Eight Books")})
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))

    }
}

struct LevelSelect_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelect()
    }
}
