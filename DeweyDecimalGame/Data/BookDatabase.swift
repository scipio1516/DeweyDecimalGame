//
//  BookDatabase.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 3/6/23.
//

import Foundation

var greenColor = ColorCodable(id: UUID(), red: 0.1, green: 0.7, blue: 0.4)
var redColor = ColorCodable(id: UUID(), red: 0.7, green: 0.1, blue: 0.1)
var extraColor = ColorCodable(id: UUID(), red: 0.55, green: 0.35, blue: 0.67)

var pureBlueColor = ColorCodable(id: UUID(), red: 0.0, green: 0.45, blue: 1.0)

var nonfictionBookDatabase: [Book] = [
    Book(bookTitle: "Wizard Book", bookColor: pureBlueColor, authorName: "H. Abelson & G. Sussman", callID: "ABE", deweyDecimalNumber: "069.32"),
    
]

var fictionBookDatabase: [Book] = [
    Book(bookTitle: "Ms. B's Book Club", bookColor: greenColor, authorName: "Amy Karam", callID: "KAR", deweyDecimalNumber: "")
]
