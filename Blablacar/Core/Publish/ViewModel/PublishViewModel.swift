//
//  PublishViewModel.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import Foundation

@Observable
class PublishViewModel {
    var searchRecomendadations = [City]()
    
    var searchText:String = ""
    
    let service = BlaBlaDataService.shared
    
    init() {
        loadSearchRecomendadations()
    }
    
    
    func loadSearchRecomendadations() {
        searchRecomendadations = service.recomendedCities
    }
}
