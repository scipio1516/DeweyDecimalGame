//
//  SavedCertificates.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 4/24/23.
//

import SwiftUI

struct SavedCertificates: View {
    @ObservedObject var certificateList : CertificateList
    //@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Spacer()
            Text("Saved Certificates")
                .fontWeight(.bold)
                .font(.title)
                .frame(alignment: .center)
                .padding()
            List {
                HStack {
                    Text("Type")
                        //.padding(.trailing, 75)
                        //.padding(.leading, -75)
                    Spacer()
                    Text("Completion Date")
                }
                .bold()
                ForEach(certificateList.certificates) { certificate in
                    NavigationLink {
                        CertificateView(date: certificate.time, savedCertificate: true)
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack {
                            Spacer()
                            Text(" \(certificate.time.formatted(date: .abbreviated, time: .shortened))")
                        }
                    }
                    
                }
            }
            .scrollContentBackground(.hidden)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all).background(Color(hue: 0.599, saturation: 0.433, brightness: 0.971))
    }
}

struct SavedCertificate_Previews: PreviewProvider {
    static var previews: some View {
        SavedCertificates(certificateList: CertificateList())
    }
}


