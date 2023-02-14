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
                .fill(data.bookColor.createColor())
                
            HStack {
                Text(data.callID).rotationEffect(Angle(degrees: 90))
                Text(data.authorName)
                Text(data.bookTitle).bold()
                
                
            }
                
            
        }.frame(width: 300, height: 60)
            .draggable(data)
        
            
            
    }
}

struct BookView_Previews: PreviewProvider {
    
    static var previews: some View {
        let grayColor = ColorCodable(id: UUID(), red: 0.5, green: 0.5, blue: 0.5)
        BookView(data: Book(id: UUID(), bookTitle: "TEST", bookColor: grayColor, authorName: "Bobby Tables", callID: "BOB", deweyDecimalNumber: "13.118"))
    }
}
