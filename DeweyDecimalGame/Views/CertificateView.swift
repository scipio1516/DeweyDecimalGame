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
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Congratulations!")
                        .font(.system(size: 80))
                        .bold()
                        .shadow(color: .yellow, radius: 50)
                    Group {
                        Text(data.username)
                            .font(.system(size: 40))
                        Text("Completion Date:\n \(date.formatted(date: .abbreviated, time: .shortened))")
                            .multilineTextAlignment(.center)
                            .font(.title3)
                    }
                    .foregroundColor(Color(.blue))
                    .fontWeight(.semibold)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView().environmentObject(UserData(username: "John Doe"))
    }
}

