//
//  BookTemplate.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/9/23.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers


//whole-ash just following the instructions from this website. hopefully, it works well?
//https://serialcoder.dev/text-tutorials/swiftui/first-experience-with-transferable-implementing-drag-and-drop-in-swiftui/

struct Book/*:  Identifiable, Codable, Transferable*/ {
    
    var bookTitle: String
    var bookColor: Color
    var authorName: String
    var callID: String
    var deweyDecimalNumber: String
    
}
