//
//  GridView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/12/24.
//

import SwiftUI

struct ItemsToDisplay: View {
    
    let astronauts : [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
  

    var body: some View {
        ForEach(missions) { mission in
            NavigationLink(value: mission){
                
                VStack{
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height:100)
                        .padding()
                    
                    VStack{
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundStyle(.white)
                        
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundStyle(.white.opacity(0.5))
                        
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(.lightBackground)
                }
                .clipShape(.rect(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.lightBackground)
                )
            }
            .navigationDestination(for: Mission.self) {mission in
                MissionView(mission: mission, astronauts: astronauts)
//
            }
        }
    }
}

#Preview {
    ItemsToDisplay()
}
