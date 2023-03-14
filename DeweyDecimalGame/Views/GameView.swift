//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI


struct GameView: View {
    
    @State var bookShelf: [Book]
    @State var isDeweyOrNot: Bool
    @State var isInOrder = false
    var body: some View {
        let bookInfo = BookData(bookArray: bookShelf)
        NavigationView {
            
            VStack(spacing: 0) {
                VStack {
                    //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property carrying their data. NOTE: does not work in preview, does work in simulator.
                    
                    //drag and drop implemented through a dropDestination modifier/View thingy. works!
                    
                    Button("Check?") {
                        isInOrder = bookInfo.checkForDeweyOrder()
                    }
                    
                    if(isInOrder) {
                        if(isDeweyOrNot) {
                            Text("Books are in Dewey Decimal order by author name!")
                                .font(.subheadline)
                        }
                        else {
                            Text("Books are in Alphabetical order by author name!")
                                .font(.subheadline)
                        }
                    } else {
                        Text("Books are not in order.")
                            .font(.subheadline)
                    }
                    
                }.padding(0)
                
                VStack {
                    //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property carrying their data. NOTE: does not work in preview, does work in simulator.
                    
                    //drag and drop implemented through a dropDestination modifier/View thingy. works!
                    ForEach(bookShelf) { shelf in
                        BookView(data: shelf)
                            .dropDestination(for: Book.self) {tempBook, location in
                                
                                //currently searching through the bookshelf to get locations, might want a more efficient way of keeping track?
                                let previousLocation = bookShelf.firstIndex(where: {anotherBook in
                                    return tempBook[0] == anotherBook
                                })
                                
                                let newLocation = (bookShelf.firstIndex(where: { newBookLocation in
                                    return shelf == newBookLocation
                                }) ?? previousLocation)
                                bookShelf.remove(at: previousLocation ?? 0)
                                bookShelf.insert(tempBook[0], at: newLocation ?? 0)
                                
                                return true
                            }
                    }
                    
                }.padding(0.0)
                    .frame(height: 300)
                    .rotationEffect(Angle(degrees: -90))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        }
        //.overlay(content: WinView())
        .sheet(isPresented: $isInOrder) {
            WinView()
        }
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        var temp = [Book(id: UUID(), bookTitle: "BookOne", bookColor: redColor, authorName: "Author One", callID: "AUT", deweyDecimalNumber: 33.333), Book(id: UUID(), bookTitle: "BookTwo", bookColor: greenColor, authorName: "Author Two", callID: "AUT", deweyDecimalNumber: 23.333), Book(id: UUID(), bookTitle: "BookThree", bookColor: pureBlueColor, authorName: "Author Three", callID: "AUT", deweyDecimalNumber: 13.333)]
        GameView(bookShelf: fictionBookDatabase, isDeweyOrNot: false)
    }
}
