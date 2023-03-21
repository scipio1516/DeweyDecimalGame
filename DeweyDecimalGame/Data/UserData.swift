//
//  UserData.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 3/20/23.
//

import Foundation

//data that will persist through all views(possibly can expand to save when the app closes?)
class UserData: ObservableObject {
    @Published var username: String
    
    init(username: String) {
        self.username = username
    }
    
}
