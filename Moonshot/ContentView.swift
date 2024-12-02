//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI


struct Missions: View {
    var destinations : [String]
    var spaceships: [String]
    var body: some View{
        ScrollView{

                Text("Our next mission are to \(destinations[0]) in \(spaceships[0])")
                Spacer()
                Text("After that, our next mission are to \(destinations[1]) in \(spaceships[1])")
            
        }
        
    }
}
struct ContentView: View {
    let destinations = ["moon", "Mars"]
    let spaceships = ["Apollo 11", "SpaceX"]
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Missions"){
                    Missions(destinations: destinations, spaceships: spaceships)
                    
                    
                }
               
            }
           
        }
        .navigationTitle("MoonShot")
    }
}

#Preview {
    ContentView()
}
