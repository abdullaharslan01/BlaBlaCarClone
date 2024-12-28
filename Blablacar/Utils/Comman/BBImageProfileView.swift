//
//  BBImageProfileView.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

enum ProfileImageSize: CGFloat {
    case xs = 30
    case s = 45
    case m = 60
    case l = 75
    case xl = 90
}

struct BBImageProfileView: View {
    let image: String
    let size: ProfileImageSize

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: size.rawValue, height: size.rawValue)
            .clipShape(Circle())
            .overlay {
                Image(systemName: "circle.badge.checkmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: size.rawValue + 10, height: size.rawValue + 10)
                    .foregroundStyle(.circleImageBackground)
                    .offset(x: 10)
                   
                
                
            }
    }
}

#Preview {
    BBImageProfileView(image: "profile", size: .l)
}
