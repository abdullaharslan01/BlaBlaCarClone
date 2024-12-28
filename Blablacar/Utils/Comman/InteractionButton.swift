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
    var isDisable: Bool = false
    
    init(symbolName: String, isDisable: Bool = false, onTapGesture: @escaping () -> Void ) {
        self.symbolName = symbolName
        self.onTapGesture = onTapGesture
        self.isDisable = isDisable
    }
    
    var body: some View {
        Button {
           
            onTapGesture()
            
        } label: {
            Image(systemName: symbolName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(isDisable ? .gray : .primary0)
                .fontWeight(.thin)
                .opacity(0.7)
        }
    }
}
