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
                       // .position(x: 425, y: 185)
                    
                    Rectangle()
                        .frame(width: 310, height: 394)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 9))
                        .rotationEffect(Angle(degrees: -90))
                        .position(x: 423, y: 230)
                    
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 540, y: 312))
                        path.addLine(to: CGPoint(x: 540, y: 317))
                        path.addLine(to: CGPoint(x: 20, y: 317))
                        path.addLine(to: CGPoint(x: 20, y: 312))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 540, y: 232))
                        path.addLine(to: CGPoint(x: 540, y: 237))
                        path.addLine(to: CGPoint(x: 20, y: 237))
                        path.addLine(to: CGPoint(x: 20, y: 232))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 3
                        path.move(to: CGPoint(x: 540, y: 152))
                        path.addLine(to: CGPoint(x: 540, y: 157))
                        path.addLine(to: CGPoint(x: 20, y: 157))
                        path.addLine(to: CGPoint(x: 20, y: 152))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 4
                        path.move(to: CGPoint(x: 540, y: 72))
                        path.addLine(to: CGPoint(x: 540, y: 77))
                        path.addLine(to: CGPoint(x: 20, y: 77))
                        path.addLine(to: CGPoint(x: 20, y: 72))
                    }
                    .stroke(.brown, lineWidth: 10)
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
