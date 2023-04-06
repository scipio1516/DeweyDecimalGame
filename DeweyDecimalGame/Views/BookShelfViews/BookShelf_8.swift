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
                     //   .position(x: 425, y: 275)
              // move the entire bookshelf down
                    
                    Rectangle()
                    
                        .frame(width: 300, height: 635)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 9))
                        .rotationEffect(Angle(degrees: -90))
                        .position(x: 423, y: 230)
                    
                    Path() { path in // 1 
                        path.move(to: CGPoint(x: 535, y: 432))
                        path.addLine(to: CGPoint(x: 535, y: 437))
                        path.addLine(to: CGPoint(x: 20, y: 437))
                        path.addLine(to: CGPoint(x: 20, y: 432))
                        
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 535, y: 352))
                        path.addLine(to: CGPoint(x: 535, y: 357))
                        path.addLine(to: CGPoint(x: 20, y: 357))
                        path.addLine(to: CGPoint(x: 20, y: 352))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                   Path() { path in // 3
                        path.move(to: CGPoint(x: 535, y: 272))
                        path.addLine(to: CGPoint(x: 535, y: 277))
                        path.addLine(to: CGPoint(x: 20, y: 277))
                        path.addLine(to: CGPoint(x: 20, y: 272))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                     Path() { path in // 4
                        path.move(to: CGPoint(x: 535, y: 192))
                        path.addLine(to: CGPoint(x: 535, y: 197))
                        path.addLine(to: CGPoint(x: 20, y: 197))
                        path.addLine(to: CGPoint(x: 20, y: 192))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                       Path() { path in // 5
                        path.move(to: CGPoint(x: 535, y: 112))
                        path.addLine(to: CGPoint(x: 535, y: 117))
                        path.addLine(to: CGPoint(x: 20, y: 117))
                        path.addLine(to: CGPoint(x: 20, y: 112))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                      Path() { path in // 6
                        path.move(to: CGPoint(x: 535, y: 32))
                        path.addLine(to: CGPoint(x: 535, y: 37))
                        path.addLine(to: CGPoint(x: 20, y: 37))
                        path.addLine(to: CGPoint(x: 20, y: 32))
                    }
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 7
                        path.move(to: CGPoint(x: 535, y: -38))
                        path.addLine(to: CGPoint(x: 535, y: -43))
                        path.addLine(to: CGPoint(x: 20, y: -43))
                        path.addLine(to: CGPoint(x: 20, y: -38))
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


struct BookShelf_8_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_8()
    }
}
