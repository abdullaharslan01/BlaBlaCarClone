//
//  Journey.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

struct Journey: Identifiable {
    var id = UUID().uuidString
    let departure: String
    let destination: String
    
    func description() -> String {
        return "\(departure) -> \(destination)"
    }
}

// Example Data
let exampleJourneys = [
    Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Gaziantep, Gaziantep"),
    Journey(departure: "Gaziantep, Gaziantep", destination: "Adana, Reşatbey, Seyhan/Adana"),
    Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Adana, Reşatbey, Seyhan/Adana")
]
