//
//  HeaderCloseView.swift
//  Blablacar
//
//  Created by abdullah on 27.12.2024.
//

import SwiftUI

struct HeaderCloseView: View {
    let title: String
    var onTapDismisGesture: ()->()
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Image(systemName: "xmark")
                .foregroundStyle(.splash)
                .font(.title3)
                .onTapGesture {
                    onTapDismisGesture()
                }

            Text(title)
                .font(.title)

        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

