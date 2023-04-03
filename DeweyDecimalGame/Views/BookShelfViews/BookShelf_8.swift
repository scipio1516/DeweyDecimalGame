//
//  BookShelf_8.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 3/2/23.
//

import SwiftUI
// https://www.appcoda.com/swiftui-pie-chart/ - Helped me make the shapes needed
struct BookShelf_8: View {
    @State private var rotation = 0.0
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                ZStack {
                    
                    GameView(bookshelfLength: 8, isDeweyOrNot: false)
                    
                    
                    Rectangle()
                        .frame(width: 350, height: 635)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 5))
                        .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 1 
                        path.move(to: CGPoint(x: 800, y: 555))
                        path.addLine(to: CGPoint(x: 800, y: 560))
                        path.addLine(to: CGPoint(x: 20, y: 560))
                        path.addLine(to: CGPoint(x: 20, y: 555))
                        
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 800, y: 475))
                        path.addLine(to: CGPoint(x: 800, y: 480))
                        path.addLine(to: CGPoint(x: 20, y: 480))
                        path.addLine(to: CGPoint(x: 20, y: 475))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 3
                        path.move(to: CGPoint(x: 800, y: 395))
                        path.addLine(to: CGPoint(x: 800, y: 400))
                        path.addLine(to: CGPoint(x: 20, y: 400))
                        path.addLine(to: CGPoint(x: 20, y: 395))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 4
                        path.move(to: CGPoint(x: 800, y: 315))
                        path.addLine(to: CGPoint(x: 800, y: 320))
                        path.addLine(to: CGPoint(x: 20, y: 320))
                        path.addLine(to: CGPoint(x: 20, y: 315))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 5
                        path.move(to: CGPoint(x: 800, y: 235))
                        path.addLine(to: CGPoint(x: 800, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 240))
                        path.addLine(to: CGPoint(x: 20, y: 235))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 6
                        path.move(to: CGPoint(x: 800, y: 155))
                        path.addLine(to: CGPoint(x: 800, y: 160))
                        path.addLine(to: CGPoint(x: 20, y: 160))
                        path.addLine(to: CGPoint(x: 20, y: 155))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 7
                        path.move(to: CGPoint(x: 800, y: 75))
                        path.addLine(to: CGPoint(x: 800, y: 80))
                        path.addLine(to: CGPoint(x: 20, y: 80))
                        path.addLine(to: CGPoint(x: 20, y: 75))
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


struct BookShelf_8_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_8()
    }
}
