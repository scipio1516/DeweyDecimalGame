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
    @ObservedObject var certificateList = CertificateList()

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
                }
                VStack {
                    
                    Image("BookShelf").resizable()
                        .frame(width: 370, height: 240)
                        .position(x: 130, y: -10)
                    
                    Image("BookShelf_2").resizable()
                        .frame(width: 370, height: 240)
                        .position(x: 720, y: -50)
                }
                
            }
           
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all).background(Color(red: 0.38, green: 0.71, blue: 0.93))
            
        }.environmentObject(UserData(username: username))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
