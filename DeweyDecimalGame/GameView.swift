//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI


struct GameView: View {
    var body: some View {
        List {
            BookView(bookTitle: "BookOne", bookColor: .red, authorName: "Author One", callID: "AUT")
            BookView(bookTitle: "BookTwo", bookColor: .blue, authorName: "Author One", callID: "AUT")
            BookView(bookTitle: "BookThree", bookColor: .purple, authorName: "Author One", callID: "AUT")
            BookView(bookTitle: "BookFour", bookColor: .gray, authorName: "Author One", callID: "AUT")
            BookView(bookTitle: "BookFive", bookColor: .orange, authorName: "Author One", callID: "AUT")
            BookView(bookTitle: "BookSix", bookColor: .green, authorName: "Author One", callID: "AUT")
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
