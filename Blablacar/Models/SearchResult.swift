//
//  SearchResult.swift
//  Blablacar
//
//  Created by abdullah on 27.12.2024.
//

import Foundation

struct SearchResult: Identifiable {
    var id = UUID().uuidString
    var departure: String
    var destination: String
    var departureTime: String
    var arrivalTime: String
    var driverName: String
    var driverRating: Double
    var driverProfileImage: String
    var price: Double
    var isFull: Bool
}


