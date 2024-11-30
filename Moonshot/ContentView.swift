//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//
// Sheets = unrelated info page
// NavigationLink = details of the current page


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List (0..<10){ row in // rows 0-9
                // a navigation link for each row
                NavigationLink("Row \(row)"){
                    // inside the link show Text
                    Text("Details \(row)")
                }
            }
            
        }
        .navigationTitle("SwiftUI")
    }
}

#Preview {
    ContentView()
}
