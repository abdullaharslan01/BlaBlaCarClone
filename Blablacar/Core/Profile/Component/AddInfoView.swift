//
//  AddInfoView.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct AddInfoView: View {
    
    let title: String
    let onTapGesture: () -> ()
    
    var body: some View {
        Button {
            onTapGesture()
        } label: {
            
            HStack {
                Image(systemName: "plus.circle")
                    .font(.title2)
                    .padding(.trailing)
                
                Text(title)
                    .fontWeight(.semibold)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.primary0)
            
        }
    }
}
