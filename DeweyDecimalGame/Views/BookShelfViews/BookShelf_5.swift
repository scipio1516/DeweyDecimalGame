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
                    
                    /*  Rectangle()
                     .frame(width: 350, height: 120)
                     .rotationEffect(Angle(degrees: -90)) */
                    
                    Rectangle()
                        .frame(width: 350, height: 700)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                        .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 800, y: 120))
                        path.addLine(to: CGPoint(x: 800, y: 125))
                        path.addLine(to: CGPoint(x: 20, y: 125))
                        path.addLine(to: CGPoint(x: 20, y: 120))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 800, y: 240))
                        path.addLine(to: CGPoint(x: 800, y: 245))
                        path.addLine(to: CGPoint(x: 20, y: 245))
                        path.addLine(to: CGPoint(x: 20, y: 240))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 3
                        path.move(to: CGPoint(x: 800, y: 360))
                        path.addLine(to: CGPoint(x: 800, y: 365))
                        path.addLine(to: CGPoint(x: 20, y: 365))
                        path.addLine(to: CGPoint(x: 20, y: 360))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 4
                        path.move(to: CGPoint(x: 800, y: 480))
                        path.addLine(to: CGPoint(x: 800, y: 485))
                        path.addLine(to: CGPoint(x: 20, y: 485))
                        path.addLine(to: CGPoint(x: 20, y: 480))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 5
                        path.move(to: CGPoint(x: 800, y: 600))
                        path.addLine(to: CGPoint(x: 800, y: 605))
                        path.addLine(to: CGPoint(x: 20, y: 605))
                        path.addLine(to: CGPoint(x: 20, y: 600))
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
