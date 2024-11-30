//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI

struct CustomText: View{
    var text: String
    
    var body: some View{
        
        Text(text)
    }
    
    init(text: String) {
        print("Custom Text was created \(text)")
        self.text = text
    }
}

// VStack will create a text all at once, when the app is showing
// VStack takes the space needed

// LazyVStack will create a text when in demand. When item is shown
// LazyVStack takes all the space



struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 10){
                ForEach(0..<100){
                    CustomText(text:"Item \($0)")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
