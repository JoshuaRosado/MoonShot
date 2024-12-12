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
  
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                GridView()
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)

            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
