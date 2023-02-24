//
//  bookShelf.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 2/14/23.
//

import SwiftUI

struct bookShelf: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Rectangle()
                    .frame(width: 350, height: 700)
                    .foregroundColor(Color.brown.opacity(0.0))
                    .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                Rectangle()
                    .frame(width: 1, height: 2)
                    .foregroundColor(Color.brown.opacity(0.0))
                    .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct bookShelf_Previews: PreviewProvider {
    static var previews: some View {
        bookShelf()
    }
}
