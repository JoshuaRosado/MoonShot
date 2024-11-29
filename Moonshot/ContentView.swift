//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image("example")
        Image(.example)
            .resizable() // resize the image
            .scaledToFit() // scaled to FIT the parent
            .scaledToFill() // scaled to FILL parent
            
        // make this image 80% of the available width
            .containerRelativeFrame(.horizontal){
                size, axis in size * 0.8
            }
        
        // make this image 90% of the available height
            .containerRelativeFrame(.vertical){
                size, axis in size * 0.9
            }

    }
}

#Preview {
    ContentView()
}
