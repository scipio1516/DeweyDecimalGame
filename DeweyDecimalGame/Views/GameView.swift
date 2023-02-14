//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI

var randomColor = ColorCodable(id: UUID(), red: 0.1, green: 0.7, blue: 0.4)

struct GameView: View {
    
    @State var bookShelf = [Book(id: UUID(), bookTitle: "BookOne", bookColor: randomColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"), Book(id: UUID(), bookTitle: "BookTwo", bookColor: randomColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"), Book(id: UUID(), bookTitle: "BookThree", bookColor: randomColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333")]
    var body: some View {
        VStack {
            //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property(placeholder image). NOTE: does not work in preview, does work in simulator.
            
            //possible implementation for drag and drop ordering???
            //(necessary? -> intersperse book views with near-invisible views), with all the dropdestination functionality. Edit views or something, with variables?
            BookView(data: bookShelf[0])
            BookView(data: bookShelf[1])
                .dropDestination(for: Book.self) {tempBook, location in
                    
                    bookShelf.remove(at: bookShelf.firstIndex(where: {anotherBook in
                        return tempBook[0] == anotherBook
                    })!)
                    bookShelf.insert(tempBook[0], at: 1)
                    
                    return true
                }
            BookView(data: bookShelf[2])
            
            
            
            //start with only three books, and try to get ordering working there. Save additional for later
            
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
