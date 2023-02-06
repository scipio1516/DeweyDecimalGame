//
//  BookView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/6/23.
//

import SwiftUI

struct BookView: View {
    var bookTitle: String
    
    var body: some View {
        Text(bookTitle)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(bookTitle: "TEST")
    }
}
