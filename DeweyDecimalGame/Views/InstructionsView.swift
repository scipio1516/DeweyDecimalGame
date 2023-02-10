//
//  InstructionsView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 2/7/23.
//

import SwiftUI

struct InstructionsView: View {
    var body: some View {
        VStack {
            Text("Instructions")
                .font(.title)
                .fontWeight(.bold)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
