//
//  BookData.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/21/23.
//

import Foundation

struct BookData {
    var dataLength: Int
    var isDewey: Bool
    var bookArray: [Book]
    
    init(bookArray: [Book], isDewey: Bool) {
        self.bookArray = bookArray
        self.isDewey = isDewey
        dataLength = bookArray.count
    }
    
    init(dataLength: Int, isDewey: Bool) {
        self.dataLength = dataLength
        self.isDewey = isDewey
        bookArray = []
        
        fictionBookDatabase.shuffle()
        nonfictionBookDatabase.shuffle()
        
        for i in 0 ..< dataLength {
            if(isDewey) {
                bookArray.append(nonfictionBookDatabase[i])
            }
            else {
                bookArray.append(fictionBookDatabase[i])
            }
        }
    }
    
    func compareAlphabetical(i: Int) -> Bool {
        let fTemp = bookArray[i - 1]
        let sTemp = bookArray[i]
        
        if(fTemp.callID > sTemp.callID) {
            return false
        }
        else if(fTemp.callID == sTemp.callID) {
            if(fTemp.authorName > sTemp.authorName) {
                return false
            }
            
            else {
                return true
            }
        }
        
        return true
    }
    
    //a quick alphabetical ordering.
    func checkForAlphabeticalOrder() -> Bool {
        
        for i in 1..<bookArray.count {
            if(!compareAlphabetical(i: i)) {
                return false
            }
        }
        
        
        return true
    }
    
    //dewey decimal, which essentially checks for numerical order, and then if they're equal, goes to alphabetical.
    func checkForDeweyOrder() -> Bool {
        
        for i in 1..<bookArray.count {
            let firstTemp = bookArray[i - 1]
            let secondTemp = bookArray[i]
            if( firstTemp.deweyDecimalNumber > secondTemp.deweyDecimalNumber) {
                return false
            }
            else if(firstTemp.deweyDecimalNumber == secondTemp.deweyDecimalNumber) {
                if(!compareAlphabetical(i: i)) {
                    return false
                }
            }
        }
        
        return true
    }
}
