//
//  City.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

struct City: Identifiable {
    var id = UUID().uuidString
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

