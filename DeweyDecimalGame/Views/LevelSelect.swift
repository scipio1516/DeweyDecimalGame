//
//  LevelSelect.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/28/23.
//

import SwiftUI

struct LevelSelect: View {
    var body: some View {
        HStack {
            VStack {
                Text("Order by Author name.")
                MainButton(text: "Three Books")
                MainButton(text: "Four Books")
                MainButton(text: "Six Books")
                MainButton(text:"Ten Books")
                Text("Ultimate Challenge!")
                MainButton(text: "Fifteen Books")
            }
            VStack {
                Text("Order by Call Number.")
                MainButton(text: "Three Books")
                MainButton(text: "Four Books")
                MainButton(text: "Six Books")
                MainButton(text:"Ten Books")
                Text("Ultimate-er Challenge-er!")
                MainButton(text: "Fifteen Books")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct LevelSelect_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelect()
    }
}
