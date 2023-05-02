//
//  ContentView.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var savedCertificate = false
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Library Organizer Quiz")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    HStack {
                        Text("Enter Username: ")
                        TextField("John Doe", text: $username).frame(width: 120)
                    }.font(.title2)
                    NavigationLink(destination: InstructionsView(),
                                   label: {MainButton(text: "Instructions")})
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    if(username.isEmpty) {
                        NavigationLink(destination: LevelSelect(),
                                       label: {MainButton(text: "Level Select")})
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(0)
                        .opacity(0)
                    }
                    else {
                        NavigationLink(destination: LevelSelect(),
                                       label: {MainButton(text: "Level Select")})
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(0)
                    }
                        NavigationLink(destination: SavedCertificates(certificateList: CertificateList()),
                                       label: {MainButton(text: "Certificates")})
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(0)
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
        }.environmentObject(UserData(username: username))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
