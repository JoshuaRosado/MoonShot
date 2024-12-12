//
//  MissionView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/7/24.
//

import SwiftUI

struct MissionView: View {
    
    struct CrewMember {
        // What they did
        let role: String
        //and who they are
        let astronaut: Astronaut
        
        // Two pieces from two different JSON files, merged together
    }
    
    let mission: Mission
    let crew : [CrewMember]
    
    
    
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
                    .padding(.vertical)
                
                Text(mission.formattedLaunchDateLong)
                    
                
                
                VStack(alignment: .leading){
                    DividerViewPreview()
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                    DividerViewPreview()
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            
            CrewView(crew: crew)

        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
        
    }
    
    init(mission: Mission, astronauts: [String:Astronaut]) {
        self.mission = mission
        
        self.crew =  mission.crew.map { member in
            if let astronaut = astronauts[member.name]{
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

#Preview {
    
    // load the DECODED list file from Bundle
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionView(mission: missions[0], astronauts: astronauts)
        .preferredColorScheme(.dark)
}
