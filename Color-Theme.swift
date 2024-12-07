//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/7/24.
//

import SwiftUI
// Extend ShapeStyle BUT ONLY where we are using Color

extension ShapeStyle where Self == Color {
    
    static var darkBackground: Color { // sending back a color
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
