//
//  WinView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 2/23/23.
//

import SwiftUI

struct WinView: View {
    var body: some View {
        VStack {
            Text("You Win")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Congratulations you have beat the game with a score of ().")
                .font(.title3)
                .padding()
            /*NavigationLink(destination: GameView(),
                           label: {MainButton(text: "Restart")})
                .font(.title2)
                .fontWeight(.bold)
                .padding()
             */
        }
    }
}

struct WinView_Previews: PreviewProvider {
    static var previews: some View {
        WinView()
    }
}
