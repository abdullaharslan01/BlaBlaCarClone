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
    
    let recomendedCities: [City] = [
        City(name: "Gaziantep"),
        City(name: "Adana"),
        City(name: "ReşatBey/Adana"),
        City(name: "Seyhan/Adana"),
        City(name: "Mersin"),
        City(name: "Akdeniz/Mersin"),
        City(name: "İstanbul"),
        City(name: "Kadıköy/İstanbul"),
        City(name: "Beyoğlu/İstanbul"),
        City(name: "Ankara"),
        City(name: "Çankaya/Ankara"),
        City(name: "Mamak/Ankara"),
        City(name: "İzmir"),
        City(name: "Konak/İzmir"),
        City(name: "Karşıyaka/İzmir"),
        City(name: "Bursa"),
        City(name: "Osmangazi/Bursa")
    ]
    
     
    
    
}
