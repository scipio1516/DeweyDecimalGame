//
//  CertificateView.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 4/19/23.
//

import SwiftUI

struct CertificateView: View {
    @State var date = Date.now
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var data: UserData
    @State var savedCertificate = false
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
                               label: {MainButton(text: "Level Select")})
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

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView().environmentObject(UserData(username: "John Doe"))
    }
}

