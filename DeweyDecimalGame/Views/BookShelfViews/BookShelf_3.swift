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
                    GameView(bookshelfLength: 3, isDeweyOrNot: false)
                    

                    
                    Rectangle()
                        .frame(width: 340, height: 240)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 5))
                        .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 800, y: 234))
                        path.addLine(to: CGPoint(x: 800, y: 239))
                        path.addLine(to: CGPoint(x: 20, y: 239))
                        path.addLine(to: CGPoint(x: 20, y: 234))
                    }
                    .foregroundColor(Color.brown.opacity(2.0))
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 800, y: 155))
                        path.addLine(to: CGPoint(x: 800, y: 160))
                        path.addLine(to: CGPoint(x: 20, y: 160))
                        path.addLine(to: CGPoint(x: 20, y: 155))
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




struct BookShelf_3_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_3()
    }
}
