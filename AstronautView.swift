//
//  AstronautView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/9/24.
//

import SwiftUI

struct AstronautView : View {
    // 1 Astronaut coming in
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                
                Text(astronaut.description)
                    .padding()
                
            }
            
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        
        
        
        
    }
}


#Preview {
    // Load all the astronauts
    
    let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
    
}
