//
//  BookTemplate.swift
//  DeweyDecimalGame
//
//  Created by Leo Lai on 2/9/23.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers


extension UTType {
    static var book = UTType(exportedAs: "Leo.DeweyDecimalGame.book")
}


//color thingie

struct ColorCodable: Identifiable, Codable, Equatable {
    var id: UUID
    
    var red: Double
    var green: Double
    var blue: Double
    
    func createColor() -> Color {
        return Color(red: red, green: green, blue: blue)
    }
    
}

//whole-ash just following the instructions from this website. hopefully, it works well?
//https://serialcoder.dev/text-tutorials/swiftui/first-experience-with-transferable-implementing-drag-and-drop-in-swiftui/

struct Book:  Identifiable, Codable, Transferable, Equatable {
    
    var id: UUID = UUID()
    
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .book)
    }
   
    
    var bookTitle: String
    var bookColor: ColorCodable
    var textColor = ColorCodable(id: UUID(), red: 0.0, green: 0.0, blue: 0.0)
    var authorName: String
    var callID: String
    var deweyDecimalNumber: Double
    
}

