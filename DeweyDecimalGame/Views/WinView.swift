//
//  WinView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 2/23/23.
//

import SwiftUI

struct WinView: View {
    @EnvironmentObject var data: UserData
    @State var date = Date.now

    var body: some View {
        NavigationView {
            VStack {
                Text("Congratulations, \(data.username)")
                    .font(.title)
                    .fontWeight(.bold)
                Text("You completed Library Book Shelving!")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Completion Date:\n \(date.formatted(date: .abbreviated, time: .shortened))")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding()
                NavigationLink(destination: LevelSelect(),
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
        WinView().environmentObject(UserData(username: "John Doe"))
    }
}
/*
struct ListItem : Identifiable, Codable {
    var id = UUID()
    var dueDate = Date()
}
*/
