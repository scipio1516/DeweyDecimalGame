//
//  NameChanger .swift
//  DeweyDecimalGame
//
//  Created by Jack W on 5/4/23.
//

import SwiftUI

struct NameChanger_: View {
    @State var username = ""
    @EnvironmentObject var data: UserData
    var body: some View {
        NavigationView {
            VStack {
                    Text("Name Changer")
                        .font(.title)
                        .fontWeight(.bold)
                HStack {
                    Text("Enter Username: ")
                    TextField("", text: $data.username).frame(width: 120)
                }.font(.title2)
             //   NavigationLink(destination: LevelSelect(),
                      //         label: {MainButton(text: "Confirm")})

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all).background(Color(red: 0.38, green: 0.71, blue: 0.93))
        }
    }
}

struct NameChanger__Previews: PreviewProvider {
    static var previews: some View {
        NameChanger_().environmentObject(UserData(username: ""))
            
    }
}
