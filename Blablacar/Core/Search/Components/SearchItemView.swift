//
//  SearchItemView.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import SwiftUI

struct SearchItemView: View {
    @Binding var title: String
    let symbolName: String?
    let labelColor: Color
    
    init(title: Binding<String>, symbolName: String?, color: Color = Color.gray) {
        self._title = title
        self.symbolName = symbolName
        self.labelColor = color
    }
     
    var body: some View {
        HStack(spacing: 10) {
            
            ZStack {
                if let symbolName {
                    Image(systemName: symbolName)
                        .foregroundStyle(Color.gray)
                        
                } else {
                    Circle()
                        .stroke(Color.gray, lineWidth: 4)
                        .frame(width: 15, height: 15)
                }
            }
            
            Text("\(title)")
                .font(.system(size: 14))
                .foregroundStyle(labelColor)
                .fontWeight(.bold)
                
        }
        .padding([.horizontal, .top])
        .frame(height: 55)
        .frame(maxWidth: .infinity, alignment: .leading)
       
    }
}