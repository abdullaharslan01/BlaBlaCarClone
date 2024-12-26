//
//  InteractionButton.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import SwiftUI

struct InteractionButton: View {
    
    var symbolName: String
    var onTapGesture: () -> ()
    
    var body: some View {
        Button {
           
            onTapGesture()
            
        } label: {
            Image(systemName: symbolName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.primary0)
                .fontWeight(.thin)
                .opacity(0.7)
        }
    }
}
