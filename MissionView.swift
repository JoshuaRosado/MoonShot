//
//  MissionView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/7/24.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    
    var body: some View {
        ScrollView{
            VStack{
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal){
                        // Using Parent width and multiplying
                        width, axis in width * 0.6
                    }
                VStack(alignment: .leading){
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
        
    }
}

#Preview {
    
    // load the DECODED list file from Bundle
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    return MissionView(mission: missions[0])
        .preferredColorScheme(.dark)
}
