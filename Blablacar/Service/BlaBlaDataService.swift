//
//  BlaBlaDataService.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

class BlaBlaDataService {
    
    static let shared = BlaBlaDataService()
    private init() { }
    
     let exampleJourneys = [
        Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Gaziantep, Gaziantep"),
        Journey(departure: "Gaziantep, Gaziantep", destination: "Adana, Reşatbey, Seyhan/Adana"),
        Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Adana, Reşatbey, Seyhan/Adana")
    ]
    
     
    
    
}
