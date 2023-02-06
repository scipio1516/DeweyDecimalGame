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
            BookView(bookTitle: "BookOne")
            BookView(bookTitle: "BookTwo")
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
