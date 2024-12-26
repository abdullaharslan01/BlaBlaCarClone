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
    
    init(title: String, systemSymbolName: String = "clock") {
        self.title = title
        self.systemSymbolName = systemSymbolName
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
    }
}
