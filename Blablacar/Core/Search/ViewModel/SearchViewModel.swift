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
    var cityRecomendadations = [City]()
    var searchResultExample = [SearchResult]()
    
    
    var currentJourneyBooking: JourneyBooking = .init()
    
    var isNumberOfSeatsToBookScreenState = false
    var isGoingToScreenState = false
    var isLeavingToScreenState = false
    var isDatePickerScreenState =  false
    
    var numberofseat = 1
    
    let service = BlaBlaDataService.shared
    
    init() {
        loadHistoryJourneys()
        loadCityRecomendations()
        loadSearchResults()
    }
    
    func changeNumberOfSeatsNumber(_ seat: Int) {
        if seat != currentJourneyBooking.numberOfSeatsToBook {
            numberofseat = seat
            currentJourneyBooking.numberOfSeatsToBook = seat
        }
    }
    
    func changeLeavingCity(_ city: City) {
        if city.name != currentJourneyBooking.journey.departure {
            currentJourneyBooking.journey.departure = city.name
        }
    }
    
    func changeGoingToCity(_ city: City) {
        if city.name != currentJourneyBooking.journey.destination {
            currentJourneyBooking.journey.destination = city.name
        }
    }

    
    func switchCities(){
        let tempt = currentJourneyBooking.journey.departure
        currentJourneyBooking.journey.departure = currentJourneyBooking.journey.destination
        currentJourneyBooking.journey.destination = tempt
    }
    
    func loadHistoryJourneys() {
        historyJourneys = service.exampleJourneys
    }
    
    func changeCurrentDate(_ date: Date) {
        currentJourneyBooking.date = date
    }
    
    func loadSearchResults() {
        searchResultExample = service.searchResults
    }
    
    

    
    // I am using for simulation
    func loadCityRecomendations() {
        cityRecomendadations = service.recomendedCities
    }
}
