//
//  SelectDateView.swift
//  Blablacar
//
//  Created by abdullah on 27.12.2024.
//

import SwiftUI

struct SelectDateView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var selectedDate: Date
    
    var changeDay: (Date)->()

    var body: some View {
        
        VStack {
            Image(systemName: "xmark")
                .foregroundStyle(.splash)
                .font(.title3)
                .onTapGesture {
                    dismiss()
                }.frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 40)
                .background(Color.black)
            
            ScrollView {
                LazyVStack(pinnedViews: .sectionHeaders) {
                             
                    Text(ConstantStrigns.Search.selectDateTextViewInfo)
                        .font(.title).frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 30)
                                
              
                    
                    
                    DatePicker("", selection: $selectedDate, in: Date.now..., displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .tint(Color.splash)
                                
                }
            }.scrollIndicators(.hidden)
                .onChange(of: selectedDate) { oldValue, newValue in
                    if oldValue != newValue {
                        changeDay(newValue)
                    }
                    dismiss()
                }
              
        }.padding(.horizontal)
    }
}

#Preview {
    SelectDateView(selectedDate: .now) { date in
    }
}


