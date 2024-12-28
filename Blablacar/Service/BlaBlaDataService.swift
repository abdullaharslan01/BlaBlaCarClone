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
    
    let searchResults: [SearchResult] = [
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:00",
            arrivalTime: "12:30",
            driverName: "Mahsun Çelik",
            driverRating: 4.8,
            driverProfileImage: "profile2",
            price: 158.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "09:30",
            arrivalTime: "13:00",
            driverName: "Ahmet Yılmaz",
            driverRating: 4.7,
            driverProfileImage: "profile3",
            price: 165.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "10:00",
            arrivalTime: "13:30",
            driverName: "Zeynep Arslan",
            driverRating: 4.9,
            driverProfileImage: "profile4",
            price: 172.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "11:00",
            arrivalTime: "14:15",
            driverName: "Fatma Kaya",
            driverRating: 4.5,
            driverProfileImage: "profile5",
            price: 185.00,
            isFull: true
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "12:30",
            arrivalTime: "15:45",
            driverName: "Murat Arslan",
            driverRating: 4.6,
            driverProfileImage: "profile6",
            price: 195.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "14:00",
            arrivalTime: "17:30",
            driverName: "Ömer Demir",
            driverRating: 4.4,
            driverProfileImage: "profile7",
            price: 200.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "16:00",
            arrivalTime: "19:15",
            driverName: "Berkay Yıldız",
            driverRating: 4.7,
            driverProfileImage: "profile8",
            price: 215.00,
            isFull: false
        ),
      
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "07:30",
            arrivalTime: "11:00",
            driverName: "Ali Yılmaz",
            driverRating: 4.6,
            driverProfileImage: "profile2",
            price: 170.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "08:00",
            arrivalTime: "11:30",
            driverName: "Ayşe Karaca",
            driverRating: 4.8,
            driverProfileImage: "profile3",
            price: 160.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "10:30",
            arrivalTime: "14:00",
            driverName: "Mehmet Çelik",
            driverRating: 4.9,
            driverProfileImage: "profile4",
            price: 180.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "13:00",
            arrivalTime: "16:30",
            driverName: "Gizem Tekin",
            driverRating: 4.3,
            driverProfileImage: "profile5",
            price: 190.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "15:00",
            arrivalTime: "18:30",
            driverName: "Baran Çetin",
            driverRating: 4.7,
            driverProfileImage: "profile6",
            price: 210.00,
            isFull: true
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "16:30",
            arrivalTime: "20:00",
            driverName: "İsmail Demir",
            driverRating: 4.5,
            driverProfileImage: "profile7",
            price: 220.00,
            isFull: false
        ),
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "17:00",
            arrivalTime: "20:30",
            driverName: "Serkan Güler",
            driverRating: 4.8,
            driverProfileImage: "profile8", 
            price: 230.00,
            isFull: false
        ), SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "06:30",
            arrivalTime: "09:45",
            driverName: "Özge Kara",
            driverRating: 4.6,
            driverProfileImage: "profile3",
            price: 145.00,
            isFull: false
        ),
        
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "08:30",
            arrivalTime: "12:00",
            driverName: "Hakan Özdemir",
            driverRating: 4.5,
            driverProfileImage: "profile2",
            price: 155.00,
            isFull: false
        ),
        
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "11:00",
            arrivalTime: "14:30",
            driverName: "Duygu Aydın",
            driverRating: 4.7,
            driverProfileImage: "profile5",
            price: 170.00,
            isFull: true
        ),
        
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "14:00",
            arrivalTime: "17:15",
            driverName: "Emre Kılıç",
            driverRating: 4.9,
            driverProfileImage: "profile4",
            price: 200.00,
            isFull: false
        ),
        
        SearchResult(
            departure: "Adana",
            destination: "Gaziantep",
            departureTime: "17:30",
            arrivalTime: "20:45",
            driverName: "Büşra Demir",
            driverRating: 4.4,
            driverProfileImage: "profile6",
            price: 220.00,
            isFull: false
        )
    ]
    
    let recomendedCities: [City] = [
        City(name: "Gaziantep"),
        City(name: "Adana"),
        City(name: "Mersin"),
        City(name: "Akdeniz/Mersin"),
        City(name: "İstanbul"),
        City(name: "Ankara"),
        City(name: "Konak/İzmir"),
        City(name: "Bursa"),
    ]
    
    
    
    let currentUser = User(name: "Abdullah", email: "abdullaharslan1473@gmail.com", phoneNumber: "+905368888888", about: "Life is a journey, not a destination.", blaBlaCarAmbassador: .ambassadorState, isVerifiedIdState: .verified, isVerifiedEmail: true, isVerifiedPhoneNumber: true, profileImageURL: "profile")
    
}
