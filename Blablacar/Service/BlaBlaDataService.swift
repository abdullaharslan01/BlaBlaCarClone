//
//  BlaBlaDataService.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

class BlaBlaDataService {
    
    static let shared = BlaBlaDataService()
    private init() {}
    
    let exampleJourneys = [
        Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Gaziantep, Gaziantep"),
        Journey(departure: "Gaziantep, Gaziantep", destination: "Adana, Reşatbey, Seyhan/Adana"),
        Journey(departure: "Adana, Reşatbey, Seyhan/Adana", destination: "Adana, Reşatbey, Seyhan/Adana")
    ]
    
    let serchResultExamples = [
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:00",
            arrivalTime: "12:30",
            driverName: "Ahmet Yılmaz",
            driverRating: 4.8,
            driverProfileImage: "profile2",
            price: 200.0,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:00",
            arrivalTime: "12:30",
            driverName: "Ahmet Yılmaz",
            driverRating: 4.8,
            driverProfileImage: "profile2",
            price: 200.0,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:00",
            arrivalTime: "12:30",
            driverName: "Ahmet Yılmaz",
            driverRating: 4.8,
            driverProfileImage: "profile2",
            price: 200.0,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:00",
            arrivalTime: "12:30",
            driverName: "Ahmet Yılmaz",
            driverRating: 4.8,
            driverProfileImage: "profile2",
            price: 200.0,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "11:00",
            arrivalTime: "14:15",
            driverName: "Mehmet Kaya",
            driverRating: 4.6,
            driverProfileImage: "profile3",
            price: 190.0,
            isFull: true
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "16:30",
            arrivalTime: "19:45",
            driverName: "Fatma Arslan",
            driverRating: 4.9,
            driverProfileImage: "profile4",
            price: 220.0,
            isFull: false
        )
    ]
    
    let recomendedCities: [City] = [
        City(name: "Gaziantep"),
        City(name: "Adana"),
        City(name: "ReşatBey/Adana"),
        City(name: "Seyhan/Adana"),
        City(name: "Mersin"),
        City(name: "Akdeniz/Mersin"),
        City(name: "İstanbul"),
        City(name: "Ankara"),
        City(name: "Konak/İzmir"),
        City(name: "Bursa"),
    ]
    
}
