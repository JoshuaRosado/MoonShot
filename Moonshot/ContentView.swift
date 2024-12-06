//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts : [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text(String(astronauts["schirra"]?.name ?? "Nothing"))
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
