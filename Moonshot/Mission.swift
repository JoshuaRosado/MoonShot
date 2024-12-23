//
//  Mission.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/5/24.
//

import Foundation


struct Mission: Hashable, Codable, Identifiable {
    

    struct CrewRole: Hashable, Codable {
        let name: String
        let role: String
        
    }
    var id = UUID()

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
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedLaunchDateLong: String {
        launchDate?.formatted(date: .long , time:.standard) ?? "N/A"
    }
}
