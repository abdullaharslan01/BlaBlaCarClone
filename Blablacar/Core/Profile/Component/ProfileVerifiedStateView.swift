//
//  ProfileVerifiedStateView.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct ProfileVerifiedStateView: View {
    
    let title: String
    let isVerified: Bool
    
    var body: some View {
        HStack {
            Image(systemName: isVerified ? "checkmark.circle.fill" : "xmark.circle.fill")
                .font(.title2)
                .foregroundStyle(isVerified ? .primary0 : .subTitle)
                .padding(.trailing)
            
            Text(title)
                .font(.callout)
                .foregroundStyle(.subTitle)
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

