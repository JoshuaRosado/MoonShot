//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI

struct Horizontal: View {
    
    // GridItem adapts to the space, giving it a minimum and a maximum
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    var body: some View {
        ScrollView(.horizontal){ // specify .horizontal
            LazyHGrid(rows: layout){ // Horizontal = Rows
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct Vertical: View {

let layout = [
    GridItem(.adaptive(minimum: 80, maximum: 120))
]
    var body: some View {
        ScrollView{ // Vertical does not need to be specified
            LazyVGrid(columns: layout){ // Vertical = Columns
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
    
}

struct ContentView: View {
    var body: some View{
        NavigationStack{
            HStack(spacing: 50){
                NavigationLink("Horizontal"){
                    Horizontal()
                    
                }
                
                
                NavigationLink("Vertical"){
                    Vertical()
                    
                }
                .navigationTitle("Direction")
            }
            .font(.title)
            
        }
    }
}


#Preview {
    ContentView()
}
