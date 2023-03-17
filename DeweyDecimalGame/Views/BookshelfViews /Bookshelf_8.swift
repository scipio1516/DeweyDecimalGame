//
//  Bookshelf_8.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 3/2/23.
//

import SwiftUI
// https://www.appcoda.com/swiftui-pie-chart/ - Helped me make the shapes needed
struct Bookshelf_8: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 700)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                    Path() { path in // 1 // 95 apart
                        path.move(to: CGPoint(x: 290, y: 140))
                        path.addLine(to: CGPoint(x: 460, y: 145))
                        path.addLine(to: CGPoint(x: 20, y: 145))
                        path.addLine(to: CGPoint(x: 20, y: 140))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 460, y: 235))
                        path.addLine(to: CGPoint(x: 460, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 235))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in // 3
                        path.move(to: CGPoint(x: 460, y: 330))
                        path.addLine(to: CGPoint(x: 460, y: 335))
                        path.addLine(to: CGPoint(x: 20, y: 335))
                        path.addLine(to: CGPoint(x: 20, y: 330))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in // 4
                        path.move(to: CGPoint(x: 460, y: 425))
                        path.addLine(to: CGPoint(x: 460, y: 430))
                        path.addLine(to: CGPoint(x: 20, y: 430))
                        path.addLine(to: CGPoint(x: 20, y: 425))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in // 5
                        path.move(to: CGPoint(x: 460, y: 520))
                        path.addLine(to: CGPoint(x: 460, y: 525))
                        path.addLine(to: CGPoint(x: 20, y: 525))
                        path.addLine(to: CGPoint(x: 20, y: 520))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in // 6
                        path.move(to: CGPoint(x: 460, y: 615))
                        path.addLine(to: CGPoint(x: 460, y: 620))
                        path.addLine(to: CGPoint(x: 20, y: 620))
                        path.addLine(to: CGPoint(x: 20, y: 615))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in // 7
                        path.move(to: CGPoint(x: 460, y: 700))
                        path.addLine(to: CGPoint(x: 460, y: 705))
                        path.addLine(to: CGPoint(x: 20, y: 705))
                        path.addLine(to: CGPoint(x: 20, y: 700))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                } 
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct Bookshelf_8_Previews: PreviewProvider {
    static var previews: some View {
        Bookshelf_8()
    }
}
