//
//  HistoryRowView.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import SwiftUI

struct HistoryRowView: View {
    
    let title: String
    let systemSymbolName: String
    var onTapGesture: ()->()
    
    init(title: String, systemSymbolName: String = "clock", onTapGesture: @escaping ()->()) {
        self.title = title
        self.systemSymbolName = systemSymbolName
        self.onTapGesture = onTapGesture
    }
    var body: some View {
        HStack {
            Image(systemName: systemSymbolName)
            Text(title)
                .font(.callout)
                .fontWeight(.medium)
                .padding(.leading, 5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(Color(.label))
            Image(systemName: "chevron.right")
            
        }.padding(.top)
            .foregroundStyle(Color(.systemGray2))
            .overlay {
                Rectangle().opacity(0.01).onTapGesture {
                    onTapGesture()
                }
            }
    }
}
