//
//  PublishView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct PublishView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<20, id: \.self) { v in
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 150)
            }
        }
    }
}

#Preview {
    PublishView()
}
