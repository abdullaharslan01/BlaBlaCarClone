//
//  PublishView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct PublishView: View {
    
    @State var vm = PublishViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                titleText
                
                BCSearchView(titleKey: ConstantStrigns.Publish.pleaseEnterTheFullAdress, text: $vm.searchText)
                    .padding(.bottom)
                
                CityRecomendataionView(title: ConstantStrigns.General.useCurrentLocation, systemSymbolName: "location") {}
                ForEach(vm.searchRecomendadations) { city in
                    Divider()
                    CityRecomendataionView(title: city.name) {
                        
                    }
                }
                
            }
            .padding([.top, .horizontal])
            .padding(.bottom, getSafeArea().bottom + 80)
                
        }
    }
    
    var titleText: some View {
        Text(ConstantStrigns.Publish.whereWillYouStartFrom).font(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 40)
    }
}

#Preview {
    PublishView()
}

struct BCSearchView: View {
    let titleKey: String
    @Binding var text: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding(.trailing)
            
            TextField(titleKey, text: $text)
        }.padding()
            .background(Color.cardBackground, in: .rect(cornerRadius: 16))
    }
}
