//
//  Certificate.swift
//  DeweyDecimalGame
//
//  Created by Dylan Koehler on 4/11/23.
//

import Foundation

class CertificateList : ObservableObject {
    @Published var certificates : [Certificate] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(certificates) {
                UserDefaults.standard.set(encoded, forKey: "data")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard.data(forKey: "data") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Certificate].self, from: items) {
                self.certificates = decoded
                return
            }
        }
        certificates = []
    }
}

struct Certificate : Identifiable, Codable {
    var id = UUID()
    var attempts : Int
    var name : String
    var time : Date
    var type : String
}
