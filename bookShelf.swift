//
//  bookShelf.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 2/16/23.
//

import SwiftUI

// https://www.appcoda.com/swiftui-pie-chart/ - Helped me make the shapes needed
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
                        path.move(to: CGPoint(x: 290, y: 185))
                        path.addLine(to: CGPoint(x: 490, y: 190))
                        path.addLine(to: CGPoint(x: 20, y: 190))
                        path.addLine(to: CGPoint(x: 20, y: 185))
                     }
                     .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in
                       path.move(to: CGPoint(x: 460, y: 300))
                       path.addLine(to: CGPoint(x: 460, y: 305))
                       path.addLine(to: CGPoint(x: 20, y: 305))
                       path.addLine(to: CGPoint(x: 20, y: 300))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    Path() { path in
                       path.move(to: CGPoint(x: 630, y: 420))
                       path.addLine(to: CGPoint(x: 630, y: 425))
                       path.addLine(to: CGPoint(x: 20, y: 425))
                       path.addLine(to: CGPoint(x: 20, y: 420))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in
                       path.move(to: CGPoint(x: 830, y: 535))
                       path.addLine(to: CGPoint(x: 830, y: 540))
                       path.addLine(to: CGPoint(x: 20, y: 540))
                       path.addLine(to: CGPoint(x: 20, y: 535))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Path() { path in
                       path.move(to: CGPoint(x: 1030, y: 650))
                       path.addLine(to: CGPoint(x: 1030, y: 655))
                       path.addLine(to: CGPoint(x: 20, y: 655))
                       path.addLine(to: CGPoint(x: 20, y: 650))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    
                    Rectangle()
                        .frame(width: 300, height: 60)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 3))
                   
                     
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
