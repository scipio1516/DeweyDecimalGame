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
var extraColor = ColorCodable(id: UUID(), red: 0.55, green: 0.35, blue: 0.67)
var pureBlueColor = ColorCodable(id: UUID(), red: 0.0, green: 0.45, blue: 1.0)
var yellowColor = ColorCodable(id: UUID(), red: 1.0, green: 1.0, blue: 0.0)
var greyColor = ColorCodable(id: UUID(), red: 0.5, green: 0.5, blue: 0.5)

var nonfictionBookDatabase: [Book] = [
    Book(bookTitle: "Wizard Book", bookColor: pureBlueColor, authorName: "H. Abelson & G. Sussman", callID: "ABE", deweyDecimalNumber: 069.32),
    
]

var fictionBookDatabase: [Book] = [ // 20 Total
    Book(bookTitle: "Ms. B's Book Club", bookColor: greenColor, authorName: "Amy Karam", callID: "KAR", deweyDecimalNumber: 0), // 1
    Book(bookTitle: "The Reading Place", bookColor: redColor, authorName: "Benoit Reed", callID: "REE", deweyDecimalNumber: 0), // 2
    Book(bookTitle: "Gone Fishing", bookColor: extraColor, authorName: "Charlie Francis", callID: "FRA", deweyDecimalNumber: 0), // 3
    Book(bookTitle: "The Underlings", bookColor: pureBlueColor, authorName: "Diana Vander", callID: "VAN", deweyDecimalNumber: 0), // 4
    Book(bookTitle: "The Mad Scientist", bookColor: yellowColor, authorName: "Emma Turner", callID: "TUR", deweyDecimalNumber: 0), // 5
    Book(bookTitle: "The Tunnel", bookColor: yellowColor, authorName: "Fal Tetreault", callID: "TET", deweyDecimalNumber: 0),
    Book(bookTitle: "World Travel Tales", bookColor: greyColor, authorName: "Sam Swerling", callID: "SWE", deweyDecimalNumber: 0), // 6
    Book(bookTitle: "Jack the Guide Dog", bookColor: greenColor, authorName: "Owen Wilson", callID: "WIL", deweyDecimalNumber: 0), // 7
    Book(bookTitle: "The Open Room", bookColor: extraColor, authorName: "James Stoll", callID: "STO", deweyDecimalNumber: 0), // 8
    Book(bookTitle: "The Magic Tree", bookColor: extraColor, authorName: "Noah Ledger", callID: "LED", deweyDecimalNumber: 0), // 9
    Book(bookTitle: "A Spell Too Far", bookColor: greyColor, authorName: "Liam Collymore", callID: "COL", deweyDecimalNumber: 0), // 10
    Book(bookTitle: "Tower To The Stars", bookColor: pureBlueColor, authorName: "Levi Verlice", callID: "VER", deweyDecimalNumber: 0), // 11
    Book(bookTitle: "A Potion For The Wise", bookColor: greenColor, authorName: "Theodore Ledger", callID: "LED", deweyDecimalNumber: 0), // 12
    Book(bookTitle: "The Enchanted Ones", bookColor: pureBlueColor, authorName: "Michael Beckett", callID: "BEC", deweyDecimalNumber: 0), // 13
    Book(bookTitle: "Winter Fairy", bookColor: greenColor, authorName: "Logan Adler", callID: "ADL", deweyDecimalNumber: 0), // 14
    Book(bookTitle: "The Dark Dragon", bookColor: redColor, authorName: "Ethan Hayes", callID: "HAY", deweyDecimalNumber: 0), // 15
    Book(bookTitle: "Lost Warriors Of Elysium", bookColor: redColor, authorName: "Charles Wilson", callID: "WIL", deweyDecimalNumber: 0), // 16
    Book(bookTitle: "The Hollow Spirit", bookColor: extraColor, authorName: "Jaxon Gray", callID: "GRA", deweyDecimalNumber: 0), // 17
    Book(bookTitle: "Eye of the Wolf", bookColor: greyColor, authorName: "Nolan Anderson", callID: "AND", deweyDecimalNumber: 0), // 18
    Book(bookTitle: "Love of Tomorrow", bookColor: yellowColor, authorName: "Miles Curran", callID: "CUR", deweyDecimalNumber: 0), // 19
    Book(bookTitle: "Love of Tomorrow", bookColor: redColor, authorName: "Cameron Gasper", callID: "GAS", deweyDecimalNumber: 0), // 20
    
    

    
]

