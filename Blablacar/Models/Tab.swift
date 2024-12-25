//
//  Tab.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

enum Tab: CaseIterable {
    
    case search
    case publish
    case rides
    case inbox
    case profile

    var image: String {
        switch self {
        case .search:
            return  "magnifyingglass"
        case .publish:
            return "plus.circle"
        case .rides:
            return "location"
        case .inbox:
            return  "message"
        case .profile:
            return "person.circle"
        }
    }

    var tabName: String {
        switch self {
        case .search:
            return "Search"
        case .publish:
            return "Publish"
        case .rides:
            return "Your rides"
        case .inbox:
            return "Inbox"
        case .profile:
            return "Profile"
        }
    }
}
