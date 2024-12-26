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
    
    var currentJourneyBooking: JourneyBooking = .init()
    
    var isNumberOfSeatsToBookScreenState = false
    
    var numberofseat = 1
    
    let service = BlaBlaDataService.shared
    
    init() {
        loadHistoryJourneys()
    }
    
    func changeNumberOfSeatsNumber(_ seat:Int) {
        if seat != currentJourneyBooking.numberOfSeatsToBook {
            numberofseat = seat
            currentJourneyBooking.numberOfSeatsToBook = seat
        }
    }
    
    func loadHistoryJourneys() {
        historyJourneys = service.exampleJourneys
    }
}
