//
//  User.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import Foundation

struct User: Identifiable {
    var id = UUID().uuidString
    var name: String
    var email: String
    var phoneNumber: String
    var about: String
    var blaBlaCarAmbassador: BlaBlaCarAmbassadorState
    var isVerifiedIdState: profileVerifieldState
    var isVerifiedEmail: Bool
    var isVerifiedPhoneNumber: Bool
    var profileImageURL: String
    
    var allVerifiedState: AllVerifiedState {
        if isVerifiedIdState == .verified && isVerifiedEmail && isVerifiedPhoneNumber {
            return .verified
        } else
        {
            return .unverified
        }
    }

}


enum AllVerifiedState: String {
    case verified = "You have a verified profile"
    case unverified = "Some information is unconfirmed"
}

enum BlaBlaCarAmbassadorState: String {
    case ambassadorState = "BlaBlaCar Ambassador"
    case normal = "Normal"
}

enum profileVerifieldState: String {
    case verified = "Verified Identity"
    case unverifed = "Unverified Identity"
}
