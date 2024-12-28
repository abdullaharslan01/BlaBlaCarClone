//
//  InboxView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct InboxView: View {
    var body: some View {

        VStack {
            Text(ConstantStrigns.Inbox.title)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.title)
                .padding(.bottom,30)
                .padding(.top,20)
            
            
            Text(ConstantStrigns.Inbox.inboxSubtitle)
                .font(.callout)
                .foregroundStyle(.subTitle)
            ScrollView {
                
            }
        }.padding(.horizontal)

    }
}

#Preview {
    InboxView()
}
