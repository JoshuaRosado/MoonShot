//
//  Mission.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/5/24.
//

import Foundation

// NESTED STRUCT
// HELPS KEEPS YOUR CODE ORGANIZED

struct Mission: Codable, Identifiable {
    
    // struct inside Mission
    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    let id : Int
    // NOT EVERY DICTIONARY HAS launchDate
    // We MIGHT have one, We MIGHT not.  USE OPTIONAL
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    

    var displayName: String {
        "Apollo \(id)"
        
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        // if there's a launchDate return a formatted date ELSE "N/A"
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
