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
                    
                    GameView(bookshelfLength: 3, isDeweyOrNot: false, certificateList: CertificateList())
                        
                    

                    
                    Rectangle()
                        .frame(width: 300, height: 230)
                        .foregroundColor(Color.brown.opacity(0.0))
                        .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.brown, lineWidth: 9))
                        .rotationEffect(Angle(degrees: -90))
                        .position(x: 423, y: 230)
                 
                  
                    
                    Path() { path in // 1
                        path.move(to: CGPoint(x: 540, y: 230))
                        path.addLine(to: CGPoint(x: 540, y: 235))
                        path.addLine(to: CGPoint(x: 20, y: 235))
                        path.addLine(to: CGPoint(x: 20, y: 230))
                    }
                   
                    .stroke(.brown, lineWidth: 10)
                    .rotationEffect(Angle(degrees: -90))
                    
                    Path() { path in // 2
                        path.move(to: CGPoint(x: 540, y: 152))
                        path.addLine(to: CGPoint(x: 540, y: 157))
                        path.addLine(to: CGPoint(x: 20, y: 157))
                        path.addLine(to: CGPoint(x: 20, y: 152))
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




struct BookShelf_3_Previews: PreviewProvider {
    static var previews: some View {
        BookShelf_3()
    }
}
