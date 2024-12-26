//
//  SelectLocationView.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import SwiftUI

struct SelectLocationView: View {

    @State var selectedCity: String = ""
    
    var cities: [City] = []
    
    var onTapCity: (City) -> Void
    
    init(selectedCity: String, cities: [City], onTapCity: @escaping (City) -> Void) {
        if selectedCity == ConstantStrigns.Search.goingto || selectedCity == ConstantStrigns.Search.leavingFrom {
            self.selectedCity = ""
        } else {
            self.selectedCity = selectedCity

        }
        
        self.cities = cities
        self.onTapCity = onTapCity
    }
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.gray)
                    .font(.title3)
                    .onTapGesture {
                        dismiss()
                    }
                TextField("\(ConstantStrigns.Search.selectCityTextViewInfo)", text: $selectedCity)
                    .font(.callout)
                if selectedCity != "" {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.gray)
                        .onTapGesture {
                            selectedCity = ""
                        }
                        
                } else {
                    EmptyView()
                        .frame(width: 15)
                }
            }.padding([.top,.bottom])
            ScrollView {
                
                HistoryRowView(title: "Use current location", systemSymbolName: "location") {}
                
                ForEach(cities) { city in
                    Divider()
                    HistoryRowView(title: "\(city.name)") {
                        withAnimation {
                            onTapCity(city)
                            dismiss()
                        }
                    }
                       
                }
            }.scrollIndicators(.hidden)
        }.padding(.horizontal)
    }
}
