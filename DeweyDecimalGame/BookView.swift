//
//  BookView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI

struct BookView: View {
    var bookTitle: String
    var bookColor: Color
    var authorName: String
    var callID: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(bookColor)
                
            HStack {
                Text(callID).rotationEffect(Angle(degrees: 90))
                Text(authorName)
                Text(bookTitle).bold()
                
                
            }
                
            
        }.frame(width: 300, height: 60)
            
            
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(bookTitle: "TEST", bookColor: Color(red: 0.5, green: 0.5, blue: 0.5), authorName: "BOBBY TABLES", callID: "TAB")
    }
}
