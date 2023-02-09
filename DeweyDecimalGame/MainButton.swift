//
//  MainButton.swift
//  DeweyDecimalGame
//
//  Created by Jack W on 2/8/23.
//

import SwiftUI

struct MainButton: View {
    var text: String
    var background: Color = .green
    var body: some View {
        Text(text)
            .foregroundColor(.blue)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(text: "Next")
    }
}
