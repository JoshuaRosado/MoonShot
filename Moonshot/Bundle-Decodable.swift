//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/3/24.
//

import Foundation


extension Bundle {
    // decode some file
    // return String: Astronaut Dict
    func decode(_ file: String) -> [String: Astronaut] {
        // URL
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle. ")
        }
        
        // finding data and loading it
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle. ")
        }
        // if we found the data and loaded
        // decoded
        
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode([String: Astronaut].self, from: data)

        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue) - \(context.debugDescription)" )
            
        } catch DecodingError.typeMismatch(_, let context){
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
            
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing \(type) value = \(context.debugDescription)")
            
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears o be invalid JSON")
            
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
        
    }
}
