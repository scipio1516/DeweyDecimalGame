//
//  BookDatabase.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 3/6/23.
//

import Foundation

//colors!
var greenColor = ColorCodable(id: UUID(), red: 0.1, green: 0.7, blue: 0.4)
var redColor = ColorCodable(id: UUID(), red: 0.7, green: 0.1, blue: 0.1)
var extraColor = ColorCodable(id: UUID(), red: 0.35, green: 0.35, blue: 0.67)
var pureBlueColor = ColorCodable(id: UUID(), red: 0.0, green: 0.45, blue: 1.0)
var yellowColor = ColorCodable(id: UUID(), red: 1.0, green: 1.0, blue: 0.0)
var greyColor = ColorCodable(id: UUID(), red: 0.5, green: 0.5, blue: 0.5)
var purpleColor = ColorCodable(id: UUID(), red: 0.7, green: 0.0, blue: 0.7)
var orangeColor = ColorCodable(id: UUID(), red: 1.0, green: 0.5, blue: 0.0)

var nonfictionBookDatabase: [Book] = [
    Book(bookTitle: "Wizard Book", bookColor: pureBlueColor, authorName: "H. Abelson & G. Sussman", callID: "ABE", deweyDecimalNumber: 069.32),
    
]

var fictionBookDatabase: [Book] = [
    Book(bookTitle: "Ms. B's Book Club", bookColor: greenColor, authorName: "Amy Karam", callID: "KAR", deweyDecimalNumber: 0),
    Book(bookTitle: "The Reading Place", bookColor: redColor, authorName: "Benoit Reed", callID: "REE", deweyDecimalNumber: 0),
    Book(bookTitle: "Gone Fishing", bookColor: extraColor, authorName: "Charlie Francis", callID: "FRA", deweyDecimalNumber: 0),
    Book(bookTitle: "The Underlings", bookColor: pureBlueColor, authorName: "Diana Vander", callID: "VAN", deweyDecimalNumber: 0),
    Book(bookTitle: "The Mad Scientist", bookColor: yellowColor, authorName: "Emma Turner", callID: "TUR", deweyDecimalNumber: 0),
    Book(bookTitle: "The Tunnel", bookColor: purpleColor, authorName: "Fal Tetreault", callID: "TET", deweyDecimalNumber: 0),
    Book(bookTitle: "World Travel Tales", bookColor: greyColor, authorName: "Sam Swerling", callID: "SWE", deweyDecimalNumber: 0),
    Book(bookTitle: "Jack the Guide Dog", bookColor: orangeColor, authorName: "Owen Wilson", callID: "WIL", deweyDecimalNumber: 0)
    
]
