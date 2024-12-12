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
    
    @State private var isShowingList = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                if !isShowingList{
                    
                    
                    LazyVGrid(columns: columns){
                        ItemsToDisplay()
                        
                    }
                    .padding([.horizontal, .bottom])
                }
                
                    else {
                            ItemsToDisplay()
                        

                }
                
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)

            .preferredColorScheme(.dark)
            
            .toolbar{
                if !isShowingList{
                    Button("List"){
                        withAnimation{
                            
                            isShowingList.toggle()
                        }
                    }
                } else {
                    Button("Columns"){
                        withAnimation{
                            isShowingList.toggle()
                        }
                    }
                }
                
                
            }
        }
        
    }
        
}

#Preview {
    ContentView()
}
