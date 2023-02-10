//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI


struct GameView: View {
    @State var lastColor:Color = .green
    var body: some View {
        VStack {
            BookView(data: Book(bookTitle: "BookOne", bookColor: .red, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookTwo", bookColor: .green, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
                .dropDestination(for: Image.self) {items,location in
                    lastColor = (lastColor == .green ? .blue : .green)
                    return true
                }
            BookView(data: Book(bookTitle: "BookThree", bookColor: .yellow, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookFour", bookColor: .blue, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookFive", bookColor: .purple, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookSix", bookColor: .orange, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
