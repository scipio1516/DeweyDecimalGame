//
//  BookView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI

struct BookView: View {
    var data: Book
    
    var bookNumber: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumIntegerDigits = 3
        formatter.maximumIntegerDigits = 3
        
        let number = NSNumber(value: data.deweyDecimalNumber)
        let formattedValue = formatter.string(from: number)
        
        
        return formattedValue ?? ""
    }
    
    
    var body: some View {
        
        //set up formatter so there's always 3 digits before the decimal, and a maximum of 2 after.
        
        ZStack {
            Rectangle()
                .fill(data.bookColor.createColor())
                
            HStack {
                VStack {
                    Text(data.callID)
                    if(data.deweyDecimalNumber != 0) {
                        Text(bookNumber)
                    }
                    
                }.rotationEffect(Angle(degrees: 90))
                Text(data.authorName).frame(width: 100)
                Text(data.bookTitle).bold().frame(width: 100)
                
                
            }.foregroundColor(data.textColor.createColor())
                
            
        }.frame(width: 300, height: 72)
            .draggable(data)
        
            
            
    }
}

struct BookView_Previews: PreviewProvider {
    
    static var previews: some View {
        let grayColor = ColorCodable(id: UUID(), red: 0.5, green: 0.5, blue: 0.5)
        BookView(data: Book(id: UUID(), bookTitle: "TEST", bookColor: grayColor,textColor: ColorCodable(id: UUID(), red: 1.0, green: 1.0, blue: 1.0), authorName: "Bobby Tables", callID: "BOB", deweyDecimalNumber: 013.27))
    }
}
