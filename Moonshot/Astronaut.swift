//
//  Astronaut.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/3/24.
//

import Foundation

// making a struct using the properties inside the JSON Dictionary

struct Astronaut: Codable, Identifiable {
    let id : String
    let name : String
    let description: String
}


