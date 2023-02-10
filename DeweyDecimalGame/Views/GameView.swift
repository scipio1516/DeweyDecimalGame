//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI


struct GameView: View {
    
    @State var bookShelf = [Book(bookTitle: "BookOne", bookColor: .red, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"), Book(bookTitle: "BookTwo", bookColor: .green , authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"), Book(bookTitle: "BookThree", bookColor: .yellow, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333")]
    var body: some View {
        VStack {
            //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property(placeholder image). NOTE: does not work in preview, does work in simulator.
            
            //possible implementation for drag and drop ordering???
            //(necessary? -> intersperse book views with near-invisible views), with all the dropdestination functionality. Edit views or something, with variables?
            BookView(data: bookShelf[0])
            BookView(data: bookShelf[1])
                .dropDestination(for: Image.self) {items,location in
                    
                    let tempBook = bookShelf[0]
                    bookShelf.remove(at: 0)
                    bookShelf.insert(tempBook, at: 1)
                    
                    bookShelf[1].bookColor = (bookShelf[1].bookColor == .green ? .blue : .green)
                    
                    return true
                }
            BookView(data: bookShelf[2])
            
            
            
            //start with only three books, and try to get ordering working there. Save everything below for later
            BookView(data: Book(bookTitle: "BookFour", bookColor: .blue, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookFive", bookColor: .purple, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            BookView(data: Book(bookTitle: "BookSix", bookColor: .orange, authorName: "Author One", callID: "AUT", deweyDecimalNumber: "33.333"))
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
