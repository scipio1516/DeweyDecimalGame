//
//  GameView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI


struct GameView: View {
    @State var bookshelfLength: Int
    @State var isDeweyOrNot: Bool
    @State var isInOrder = false
    @State var isDifficult = false
    @State var bookInfo = BookData(bookArray: [], isDewey: true)
    var body: some View {
        
        
         NavigationView {
            VStack(spacing: 0) {
                VStack {
                    //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property carrying their data. NOTE: does not work in preview, does work in simulator.
                    
                    //drag and drop implemented through a dropDestination modifier/View thingy. works!
                    
                    MainButton(text: "Check!")
                        .onTapGesture {
                            isInOrder = bookInfo.checkForDeweyOrder()
                        }
                        .padding()
                    
                }.padding(0)
                    .onAppear() {
                        bookInfo = BookData(dataLength: bookshelfLength, isDewey: isDeweyOrNot, difficultVersion: isDifficult)
                    }
                
                VStack {
                    //Currently: Books are a custom view, taking from a custom struct, and have the ondrag property carrying their data. NOTE: does not work in preview, does work in simulator.
                    
                    //drag and drop implemented through a dropDestination modifier/View thingy. works!
                    ForEach(bookInfo.bookArray) { shelf in
                        BookView(data: shelf)
//                            .position(x: bookList[i].xPosition, y: 300 - (bookList[i].height / 2))

                            .dropDestination(for: Book.self) {tempBook, location in
                                
                                //currently searching through the bookshelf to get locations, might want a more efficient way of keeping track?
                                let previousLocation = bookInfo.bookArray.firstIndex(where: {anotherBook in
                                    return tempBook[0] == anotherBook
                                })
                                
                                let newLocation = (bookInfo.bookArray.firstIndex(where: { newBookLocation in
                                    return shelf == newBookLocation
                                }) ?? previousLocation)
                                bookInfo.bookArray.remove(at: previousLocation ?? 0)
                                bookInfo.bookArray.insert(tempBook[0], at: newLocation ?? 0)
                                
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
        GameView(bookshelfLength: 8, isDeweyOrNot: false, isDifficult: true)
    }
}
