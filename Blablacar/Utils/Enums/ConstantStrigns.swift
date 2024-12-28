//
//  ConstantStrigns.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import Foundation

enum ConstantStrigns {
    enum Search {
        static let title = "Your pick of rides at\n low prices"
        static let search = "Search"
        static let leavingFrom = "Leaving from"
        static let goingto = "Going to"
        static let today = "Today"
        static let numberOfSeatsToBook = "Number of seats to book"
        static let selectCityTextViewInfo = "Example: Adana City or Gaziantep Castle"
        static let selectDateTextViewInfo = "What date will you depart?"
    }
    
    enum Publish {
        static let whereWillYouStartFrom = "Where will you start from?"
        static let pleaseEnterTheFullAdress = "Please enter the full address"
    }
    
    enum General {
        static let confirm = "Confirm"
        static let useCurrentLocation = "Use current location"
    }
    
    enum Rides {
        static let upcoming = "Your upcoming travel plans will appear here."
        static let subTitleMessage = "Find the perfect trip from thousands of destinations or post to share your travel expenses."
        static let archiveJourneys = "Archived journeys"
        
    }
    
    enum Inbox {
        static let title = "Inbox"
        static let inboxSubtitle = "You don't have any messages at the moment. Book or post a trip to connect with other members. If you're traveling soon, you can connect with the person you'll be traveling with!"
    }
    
    enum Profile {
        static let editProfilePicture = "Edit your profile picture"
        static let editPersonelInfo = "Edit your personal information"
        static let verifiedProfileTitle = "You have a verified profile"
        static let about = "About"
        
        static let addJourney = "Add journey"
        static let addCar = "Add car"
        static let vehicles = "Vehicles"
        static let exit = "Exit"
        static let closeAccount = "Close account"
        
        enum Sections {
            static let section1 = ["Points"]
            static let section2 = ["Contact Preferences", "Dark Mode", "Password", "Email Address"]
            static let section3 = ["Payment Methods", "Received Payments", "Refunds and Payments"]
            static let section4 = ["Rate the App", "Help", "Terms and Conditions", "Data Protection"]
        }
        
    }
    
}
