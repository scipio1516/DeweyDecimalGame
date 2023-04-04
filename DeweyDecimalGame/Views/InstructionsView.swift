//
//  InstructionsView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 2/7/23.
//

import SwiftUI

struct InstructionsView: View {
    var body: some View {
        VStack {
            Text("Instructions")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("To Play the Dewey Decimal Game you must rearrange the books into the correct order from left to right and you can choose to sort the books by the author's name or the book number in the level select menu.")
                .font(.title3)
                .padding()
                .padding(.horizontal)
            Text("To move books hold on them until the book turns sideways.  Then drag and drop the book onto the book that you want the book to replace.")
                .font(.title3)
                .padding()
                .padding(.horizontal)
            Text("When you have put the books into the correct order press the Check button to see if the books are in the correct order")
                .font(.title3)
                .padding()
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
