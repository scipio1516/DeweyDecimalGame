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
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Saved Certificates")
                        .foregroundColor(Color("Peach"))
                        .shadow(color: Color("Peach"), radius: 20)
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(alignment: .center)
                    Spacer()
                }
                .padding()
                List {
                    HStack {
                        Text("Type")
                            .padding(.trailing, 75)
                            .padding(.leading, -75)
                        Spacer()
                        Text("Completion Date")
                    }
                    .bold()
                    .foregroundColor(Color("Bistre"))
                    .listRowBackground(Color("Peach"))
                    ForEach(certificateList.certificates) { certificate in
                        NavigationLink {
                            CertificateView(date: certificate.time)
                        } label: {
                            HStack {
                                Spacer()
                                Text(" \(certificate.time.formatted(date: .abbreviated, time: .shortened))")
                            }
                            .foregroundColor(Color("Bistre"))
                        }
                        .listRowBackground(Color("Peach"))
                    }
                }
                .scrollContentBackground(.hidden)
                Spacer()
            }
        }
    }
}

struct SavedCertificate_Previews: PreviewProvider {
    static var previews: some View {
        SavedCertificates(certificateList: CertificateList())
    }
}


