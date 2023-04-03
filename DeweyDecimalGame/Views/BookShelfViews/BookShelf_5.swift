//
//  BookShelf_5.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 3/2/23.
//

import SwiftUI


struct BookShelf_5: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                ZStack {
                    
                    GameView(bookshelfLength: 5, isDeweyOrNot: false)
                    
                    Rectangle()
                        .frame(width: 360, height: 398)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 5))
                        .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 800, y: 317))
                        path.addLine(to: CGPoint(x: 800, y: 322))
                        path.addLine(to: CGPoint(x: 20, y: 322))
                        path.addLine(to: CGPoint(x: 20, y: 317))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 800, y: 237))
                        path.addLine(to: CGPoint(x: 800, y: 242))
                        path.addLine(to: CGPoint(x: 20, y: 242))
                        path.addLine(to: CGPoint(x: 20, y: 237))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 3
                        path.move(to: CGPoint(x: 800, y: 156))
                        path.addLine(to: CGPoint(x: 800, y: 161))
                        path.addLine(to: CGPoint(x: 20, y: 161))
                        path.addLine(to: CGPoint(x: 20, y: 156))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 4
                        path.move(to: CGPoint(x: 800, y: 77))
                        path.addLine(to: CGPoint(x: 800, y: 82))
                        path.addLine(to: CGPoint(x: 20, y: 82))
                        path.addLine(to: CGPoint(x: 20, y: 77))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}


struct BookShelf_5_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_5()
    }
}
