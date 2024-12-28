//
//  ProfileViewModel.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import Foundation

@Observable
class ProfileViewModel {
    var selectedOption: ProfileSectionOption = .account
    
    var currentUser: User = BlaBlaDataService.shared.currentUser
    
    
    let sections = [
        ConstantStrigns.Profile.Sections.section1,
        ConstantStrigns.Profile.Sections.section2,
        ConstantStrigns.Profile.Sections.section3,
        ConstantStrigns.Profile.Sections.section4
    ]
    
    
    
    
}
