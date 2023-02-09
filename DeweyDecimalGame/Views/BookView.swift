//
//  BookView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI

struct BookView: View {
    var data: Book
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(data.bookColor)
                
            HStack {
                Text(data.callID).rotationEffect(Angle(degrees: 90))
                Text(data.authorName)
                Text(data.bookTitle).bold()
                
                
            }
                
            
        }.frame(width: 300, height: 60)
            .draggable(Image("everest"))
        
            
            
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(data: Book(bookTitle: "TEST", bookColor: .gray, authorName: "Bobby Tables", callID: "BOB", deweyDecimalNumber: "13.118"))
    }
}
