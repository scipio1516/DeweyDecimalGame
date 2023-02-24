//
//  BookData.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/21/23.
//

import Foundation

class BookData {
    var bookArray: [Book]
    
    init(bookArray: [Book]) {
        self.bookArray = bookArray
    }
    
    func checkForAlphabeticalOrder() -> Bool {
        
        for i in 1..<bookArray.count {
            if(bookArray[i - 1].authorName > bookArray[i].authorName) {
                return false
            }
        }
        
        
        return true
    }
    
    func checkForDeweyOrder() -> Bool {
        
        for i in 1..<bookArray.count {
            if(bookArray[i - 1].deweyDecimalNumber > bookArray[i].deweyDecimalNumber) {
                return false
            }
        }
        
        
        return true
    }
}
