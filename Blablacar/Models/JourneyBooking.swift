//
//  JourneyBooking.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import Foundation

struct JourneyBooking {
    var journey: Journey = .init()
    var date: Date = .now {
        didSet {
            let calendar = Calendar.current
            if calendar.isDateInToday(date) {
                dateDescription = "Today"
            } else if calendar.isDateInTomorrow(date) {
                dateDescription = "Tomorrow"
            } else {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "EEE dd MMMM"
                dateDescription = dateFormatter.string(from: date)
            }
        }
    }
    var numberOfSeatsToBook: Int = 1 {
        didSet {
            numberOfSeatsDescription = numberOfSeatsToBook.description
        }
    }
    
    var dateDescription: String = "Today"
    
    var numberOfSeatsDescription: String = "1"
        
}
