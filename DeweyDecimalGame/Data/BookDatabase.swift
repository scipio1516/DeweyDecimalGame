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
var yellowColor = ColorCodable(id: UUID(), red: 1.0, green: 1.0, blue: 0.0) // remove
var greyColor = ColorCodable(id: UUID(), red: 0.5, green: 0.5, blue: 0.5) // remove

var nonfictionBookDatabase: [Book] = [
    Book(bookTitle: "Wizard Book", bookColor: greenColor, authorName: "H. Abelson & G. Sussman", callID: "ABE", deweyDecimalNumber: 069.32), // 1
    Book(bookTitle: "Behind the Door", bookColor: pureBlueColor, authorName: "Xavier Gonzales", callID: "GON", deweyDecimalNumber: 083.92), // 2
    Book(bookTitle: "Innocent Eyes", bookColor: redColor, authorName: "Gael Spade", callID: "SPA", deweyDecimalNumber: 098.54), // 3
    Book(bookTitle: "Bad Surprise", bookColor: pureBlueColor, authorName: "Dominic Finch", callID: "FIN", deweyDecimalNumber: 204.29), // 4
    Book(bookTitle: "Blank Paper", bookColor: redColor, authorName: "Declan Beam", callID: "BEA", deweyDecimalNumber: 043.86), // 5
    Book(bookTitle: "The Perfect Thief", bookColor: pureBlueColor, authorName: "Austin Driscoll", callID: "DRI", deweyDecimalNumber: 146.39), // 6
    Book(bookTitle: "Time To Go", bookColor: greenColor, authorName: "Jace Hendrix", callID: "HEN", deweyDecimalNumber: 123.17), // 7
    Book(bookTitle: "Long Road To Go", bookColor: pureBlueColor, authorName: "Gael Zimmerman", callID: "ZIM", deweyDecimalNumber: 082.72), // 8
    Book(bookTitle: "Judge of Crime", bookColor: pureBlueColor, authorName: "Connor Verlice", callID: "VER", deweyDecimalNumber: 028.28), // 9
    Book(bookTitle: "A Sharp Punishment", bookColor: redColor, authorName: "Nicholas Jenkins", callID: "JEN", deweyDecimalNumber: 146.58), // 10
    Book(bookTitle: "Fear Of Those", bookColor: greenColor, authorName: "Emmett Keller", callID: "KEL", deweyDecimalNumber: 138.72), // 11
    Book(bookTitle: "Elite of the Unknowns", bookColor: pureBlueColor, authorName: "Jose Ellis", callID: "ELL", deweyDecimalNumber: 109.54), // 12
    Book(bookTitle: "One Shot", bookColor: greenColor, authorName: "Ryder Hope", callID: "HOP", deweyDecimalNumber: 093.94), // 13
    Book(bookTitle: "We Are Powerful", bookColor: pureBlueColor, authorName: "Rowan Cassidy", callID: "CAS", deweyDecimalNumber: 168.82), // 14
    Book(bookTitle: "Lone Cowboy", bookColor: greenColor, authorName: "Parker West", callID: "WES", deweyDecimalNumber: 184.88), // 15
    Book(bookTitle: "Cursed Queen", bookColor: pureBlueColor, authorName: "Diego Levine", callID: "LEV", deweyDecimalNumber: 015.55), // 16
    Book(bookTitle: "The Blue Knight", bookColor: redColor, authorName: "Brayden Thatcher", callID: "THA", deweyDecimalNumber: 156.78), // 17
    Book(bookTitle: "Fire And Water", bookColor: greenColor, authorName: "Zion Raven", callID: "RAV", deweyDecimalNumber: 037.64), // 18
    Book(bookTitle: "Burger Boy", bookColor: redColor, authorName: "Archer Monroe", callID: "MON", deweyDecimalNumber: 082.92), // 19
    Book(bookTitle: "Galaxy Bugs", bookColor: redColor, authorName: "Theo Elsher", callID: "ELS", deweyDecimalNumber: 049.76), // 20
    
    
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

