//
//  SearchViewModel.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

@Observable
class SearchViewModel {
    var historyJourneys = [Journey]()
    
    
    let service = BlaBlaDataService.shared
    
    init() {
        loadHistoryJourneys()
    }
    
    func loadHistoryJourneys() {
        historyJourneys = service.exampleJourneys
    }
}
