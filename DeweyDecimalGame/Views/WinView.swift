//
//  WinView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 2/23/23.
//

import SwiftUI

struct WinView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Congratulations")
                    .font(.title)
                    .fontWeight(.bold)
                Text("You Win!")
                    .font(.title)
                    .fontWeight(.bold)
                NavigationLink(destination: ContentView(),
                               label: {MainButton(text: "Restart Game")})
                .font(.title2)
                .fontWeight(.bold)
                .padding()
                //Button(label: {MainButton(text: "Instructions")) {
                
                //}
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        }
    }
}

struct WinView_Previews: PreviewProvider {
    static var previews: some View {
        WinView()
    }
}
