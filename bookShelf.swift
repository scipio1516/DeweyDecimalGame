//
//  bookShelf.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 2/16/23.
//

import SwiftUI

// 4 lines

struct bookShelf: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 700)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                     Path() { path in
                        path.move(to: CGPoint(x: 290, y: 235))
                        path.addLine(to: CGPoint(x: 490, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 235))
                     }
                     .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in
                       path.move(to: CGPoint(x: 460, y: 395)) // has to be 55 apart
                       path.addLine(to: CGPoint(x: 460, y: 400))
                       path.addLine(to: CGPoint(x: 20, y: 400))
                       path.addLine(to: CGPoint(x: 20, y: 395))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in
                       path.move(to: CGPoint(x: 630, y: 575))
                       path.addLine(to: CGPoint(x: 630, y: 580))
                       path.addLine(to: CGPoint(x: 20, y: 580))
                       path.addLine(to: CGPoint(x: 20, y: 575))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                     
                }
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
