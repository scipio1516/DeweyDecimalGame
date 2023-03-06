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
                NavigationLink(destination: BookShelf_3(),
                               label: {MainButton(text: "Three Books")})
                NavigationLink(destination: BookShelf_4(),
                               label: {MainButton(text: "Four Books")})
                NavigationLink(destination: BookShelf_5(),
                               label: {MainButton(text: "Five Books")})
                Text("Ultimate Challenge!")
                NavigationLink(destination: BookShelf_8(),
                               label: {MainButton(text: "Eight Books")})
                 
            }
            VStack {
                Text("Order by Call Number.")
                NavigationLink(destination: BookShelf_3(),
                               label: {MainButton(text: "Three Books")})
                NavigationLink(destination: BookShelf_4(),
                               label: {MainButton(text: "Four Books")})
                NavigationLink(destination: BookShelf_5(),
                               label: {MainButton(text: "Five Books")})
                Text("Ultimate Challenge!")
                NavigationLink(destination: BookShelf_8(),
                               label: {MainButton(text: "Eight Books")})
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
