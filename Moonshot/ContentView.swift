//
//  ContentView.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 11/28/24.
//

import SwiftUI

struct User : Codable {
    let name: String
    let address: Address
}

struct Address : Codable {
    let street: String
    let city: String
}


struct ContentView: View {
    var body: some View {
        Button("Decode JSON"){
            print("Hello")
            
            // Input JSON dictionary
            let input = """
                        { "name": "Taylor Swift",
                        "address": { 
                        "street": "555 Taylor Swift Avenue", "city": "Nashville"
                        }
                        }

                        """
            
            // data from the dictionary
            let data = Data(input.utf8)
            // decoder
            let decoder = JSONDecoder()
            
            
            // try to decode User from dictionary data.
            if let user = try? decoder.decode(User.self, from: data) {
                //if so display user's address
                print(user.address)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
