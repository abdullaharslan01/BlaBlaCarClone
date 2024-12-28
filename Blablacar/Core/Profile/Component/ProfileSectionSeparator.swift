//
//  ProfileSectionSeparator.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct ProfileSectionSeparator: View {
    var body: some View {
        Rectangle()
            .fill(.subTitle.opacity(0.8))
            .frame(height: 1)
    }
}

#Preview {
    ProfileSectionSeparator()
}
