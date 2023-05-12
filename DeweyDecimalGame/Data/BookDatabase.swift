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
var orangeColor = ColorCodable(id:UUID(), red:1.0, green: 0.5, blue: 0.0)
var purpleColor = ColorCodable(id:UUID(), red:0.5, green: 0.0, blue: 0.75)
var turquoiseColor = ColorCodable(id:UUID(), red:0.5, green: 0.75, blue: 0.75)


var nonfictionBookDatabase: [Book] = [
    Book(bookTitle: "Wizard Book", bookColor: greenColor, authorName: "H. Abelson & G. Sussman", callID: "ABE", deweyDecimalNumber: 069.32), // 1
    Book(bookTitle: "Behind the Door", bookColor: greenColor, authorName: "Xavier Gonzales", callID: "GON", deweyDecimalNumber: 083.92), // 2
    Book(bookTitle: "Innocent Eyes", bookColor: greenColor, authorName: "Gael Spade", callID: "SPA", deweyDecimalNumber: 098.54), // 3
    Book(bookTitle: "Bad Surprise", bookColor: redColor, authorName: "Dominic Finch", callID: "FIN", deweyDecimalNumber: 204.29), // 4
    Book(bookTitle: "Blank Paper", bookColor: redColor, authorName: "Declan Beam", callID: "BEA", deweyDecimalNumber: 043.86), // 5
    Book(bookTitle: "The Perfect Thief", bookColor: redColor, authorName: "Austin Driscoll", callID: "DRI", deweyDecimalNumber: 146.39), // 6
    Book(bookTitle: "Time To Go", bookColor: extraColor, authorName: "Jace Hendrix", callID: "HEN", deweyDecimalNumber: 123.17), // 7
    Book(bookTitle: "Long Road To Go", bookColor: extraColor, authorName: "Gael Zimmerman", callID: "ZIM", deweyDecimalNumber: 082.72), // 8
    Book(bookTitle: "Judge of Crime", bookColor: extraColor, authorName: "Connor Verlice", callID: "VER", deweyDecimalNumber: 028.28), // 9
    Book(bookTitle: "A Sharp Punishment", bookColor: pureBlueColor, authorName: "Nicholas Jenkins", callID: "JEN", deweyDecimalNumber: 146.58), // 10
    Book(bookTitle: "Fear Of Those", bookColor: pureBlueColor, authorName: "Emmett Keller", callID: "KEL", deweyDecimalNumber: 138.72), // 11
    Book(bookTitle: "Elite of the Unknowns", bookColor: pureBlueColor, authorName: "Jose Ellis", callID: "ELL", deweyDecimalNumber: 109.54), // 12
    Book(bookTitle: "One Shot", bookColor: orangeColor, authorName: "Ryder Hope", callID: "HOP", deweyDecimalNumber: 093.94), // 13
    Book(bookTitle: "We Are Powerful", bookColor: orangeColor, authorName: "Rowan Cassidy", callID: "CAS", deweyDecimalNumber: 168.82), // 14
    Book(bookTitle: "Lone Cowboy", bookColor: orangeColor, authorName: "Parker West", callID: "WES", deweyDecimalNumber: 184.88), // 15
    Book(bookTitle: "Cursed Queen", bookColor: purpleColor, authorName: "Diego Levine", callID: "LEV", deweyDecimalNumber: 015.55), // 16
    Book(bookTitle: "The Blue Knight", bookColor: purpleColor, authorName: "Brayden Thatcher", callID: "THA", deweyDecimalNumber: 156.78), // 17
    Book(bookTitle: "Fire And Water", bookColor: purpleColor, authorName: "Zion Raven", callID: "RAV", deweyDecimalNumber: 037.64), // 18
    Book(bookTitle: "Burger Boy", bookColor: turquoiseColor, authorName: "Archer Monroe", callID: "MON", deweyDecimalNumber: 082.92), // 19
    Book(bookTitle: "Galaxy Bugs", bookColor: turquoiseColor, authorName: "Theo Elsher", callID: "ELS", deweyDecimalNumber: 049.76), // 20
    
    
]

var fictionBookDatabase: [Book] = [ // 20 Total
    Book(bookTitle: "Ms. B's Book Club", bookColor: greenColor, authorName: "Amy Karam", callID: "KAR", deweyDecimalNumber: 0), // 1
    Book(bookTitle: "The Reading Place", bookColor: greenColor, authorName: "Benoit Reed", callID: "REE", deweyDecimalNumber: 0), // 2
    Book(bookTitle: "Gone Fishing", bookColor: greenColor, authorName: "Charlie Francis", callID: "FRA", deweyDecimalNumber: 0), // 3
    Book(bookTitle: "The Underlings", bookColor: redColor, authorName: "Diana Vander", callID: "VAN", deweyDecimalNumber: 0), // 4
    Book(bookTitle: "The Mad Scientist", bookColor: redColor, authorName: "Emma Turner", callID: "TUR", deweyDecimalNumber: 0), // 5
    Book(bookTitle: "The Tunnel", bookColor: redColor, authorName: "Fal Tetreault", callID: "TET", deweyDecimalNumber: 0), // 6
    Book(bookTitle: "World Travel Tales", bookColor: pureBlueColor, authorName: "Sam Swerling", callID: "SWE", deweyDecimalNumber: 0), // 7
    Book(bookTitle: "Jack the Guide Dog", bookColor: pureBlueColor, authorName: "Owen Wilson", callID: "WIL", deweyDecimalNumber: 0), // 8
    Book(bookTitle: "The Open Room", bookColor: pureBlueColor, authorName: "James Stoll", callID: "STO", deweyDecimalNumber: 0), // 9
    Book(bookTitle: "The Magic Tree", bookColor: orangeColor, authorName: "Noah Ledger", callID: "LED", deweyDecimalNumber: 0), // 10
    Book(bookTitle: "A Spell Too Far", bookColor: orangeColor, authorName: "Liam Collymore", callID: "COL", deweyDecimalNumber: 0), // 11
    Book(bookTitle: "Tower To The Stars", bookColor: orangeColor, authorName: "Levi Verlice", callID: "VER", deweyDecimalNumber: 0), // 12
    Book(bookTitle: "A Potion For The Wise", bookColor: purpleColor, authorName: "Theodore Ledger", callID: "LED", deweyDecimalNumber: 0), // 13
    Book(bookTitle: "The Enchanted Ones", bookColor: purpleColor, authorName: "Michael Beckett", callID: "BEC", deweyDecimalNumber: 0), // 14
    Book(bookTitle: "Winter Fairy", bookColor: purpleColor, authorName: "Logan Adler", callID: "ADL", deweyDecimalNumber: 0), // 15
    Book(bookTitle: "The Dark Dragon", bookColor: extraColor, authorName: "Ethan Hayes", callID: "HAY", deweyDecimalNumber: 0), // 16
    Book(bookTitle: "Lost Warriors Of Elysium", bookColor: extraColor, authorName: "Charles Wilson", callID: "WIL", deweyDecimalNumber: 0), // 17
    Book(bookTitle: "The Hollow Spirit", bookColor: extraColor, authorName: "Jaxon Gray", callID: "GRA", deweyDecimalNumber: 0), // 18
    Book(bookTitle: "Eye of the Wolf", bookColor: turquoiseColor, authorName: "Nolan Anderson", callID: "AND", deweyDecimalNumber: 0), // 19
    Book(bookTitle: "Love of Tomorrow", bookColor: turquoiseColor, authorName: "Miles Curran", callID: "CUR", deweyDecimalNumber: 0), // 20
    Book(bookTitle: "Rain On Those", bookColor: turquoiseColor, authorName: "Cameron Gasper", callID: "GAS", deweyDecimalNumber: 0), // 21
    
    

    
]

var fictionBookDatabaseDifficult: [Book] = [ //also 20 books; will have the same call numbers as the above.
    Book(bookTitle: "Mecho", bookColor: redColor, authorName: "Angel Karaliychev", callID: "KAR", deweyDecimalNumber: 0), // 1
    Book(bookTitle: "Dive in the Sun", bookColor: redColor, authorName: "Douglas Reeman", callID: "REE", deweyDecimalNumber: 0), // 2
    Book(bookTitle: "The Cavalier Case", bookColor: redColor, authorName: "Antonia Fraser", callID: "Fraser", deweyDecimalNumber: 0), // 3
    Book(bookTitle: "Araminta Station", bookColor: pureBlueColor, authorName: "Jack Vance", callID: "VAN", deweyDecimalNumber: 0), // 4
    Book(bookTitle: "In That Time of Secrets", bookColor: pureBlueColor, authorName: "Ann Turnbull", callID: "TUR", deweyDecimalNumber: 0) // 5
]

