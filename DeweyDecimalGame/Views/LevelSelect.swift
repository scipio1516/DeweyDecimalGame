//
//  LevelSelect.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/28/23.
//

import SwiftUI

struct LevelSelect: View {
    @EnvironmentObject var data: UserData
    @ObservedObject var certificateList = CertificateList()
    var body: some View {
        HStack {
            VStack {
                Text("Order by Call ID.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .position(x: 300, y: 120)
                NavigationLink(destination: BookShelf_8(difficulty: false),
                               label: {MainButton(text: "Easy")})
                .fontWeight(.bold)
                .position(x: 300, y: 55)
                NavigationLink(destination:  BookShelf_8(difficulty: true),
                               label: {MainButton(text: "Hard")})
                .fontWeight(.bold)
                .padding()
                .position(x: 300, y: -5)                
                 
            }
            VStack {
                Text("Order by Dewey Decimal Number.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .position(x: 280, y: 105)
                NavigationLink(destination: BookShelf_8_True(difficulty: false),
                               label: {MainButton(text: "Easy")})
                .fontWeight(.bold)
                .position(x: 280, y: 60)
                NavigationLink(destination: BookShelf_8_True(difficulty: true).environmentObject(data),
                               label: {MainButton(text: "Hard")})
                .fontWeight(.bold)
                .padding()
                .position(x: 280, y: 0)
            }
            NavigationLink(destination: NameChanger_(),
                           label: {MainButton(text: "Name Chnage")})
            .position(x: 180, y: 350)
                
            }
            
            NavigationLink(destination: SavedCertificates(certificateList: certificateList),
                           label: {MainButton(text: "Certificates")})
            .font(.title2)
            .fontWeight(.bold)
            .padding(0)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct LevelSelect_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelect().environmentObject(UserData(username: "Default"))
    }
}
