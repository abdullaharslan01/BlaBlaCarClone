//
//  ProfileEditButton.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct ProfileEditButton: View {
    
    let title: String
    
    var onTapGesture: () -> ()
    
    var body: some View {
        Button {
            onTapGesture()
        } label: {
            
            Text(title)
                .foregroundStyle(.primary0)
        }
    }
}

