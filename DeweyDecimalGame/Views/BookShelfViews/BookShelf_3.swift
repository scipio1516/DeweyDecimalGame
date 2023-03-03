//
//  BookShelf_3.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 3/2/23.
//

import SwiftUI


struct BookShelf_3: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 700)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 290, y: 320))
                        path.addLine(to: CGPoint(x: 460, y: 325))
                        path.addLine(to: CGPoint(x: 20, y: 325))
                        path.addLine(to: CGPoint(x: 20, y: 320))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 460, y: 550))
                        path.addLine(to: CGPoint(x: 460, y: 555))
                        path.addLine(to: CGPoint(x: 20, y: 555))
                        path.addLine(to: CGPoint(x: 20, y: 550))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}




struct BookShelf_3_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_3()
    }
}
