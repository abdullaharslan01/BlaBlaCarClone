//
//  SelectSeatView.swift
//  Blablacar
//
//  Created by abdullah on 26.12.2024.
//

import SwiftUI

struct SelectSeatView: View {
    
    @State var numberofSeatsToBook: Int = 1
    
    init(numberofSeatsToBook: Int, onSelectedConfirm: @escaping (Int) -> ()) {
        self.numberofSeatsToBook = numberofSeatsToBook
        self.onSelectedConfirm = onSelectedConfirm
    }
    
    var onSelectedConfirm: (Int)->()
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            
            HeaderCloseView(title: ConstantStrigns.Search.numberOfSeatsToBook) {
                dismiss()
            }
            
            Spacer()
            
            HStack {
                InteractionButton(symbolName: "minus.circle") {
                    if numberofSeatsToBook != 1 {
                        numberofSeatsToBook -= 1
                    }
                }
                
                Text("\(numberofSeatsToBook)")
                    .font(.system(size: 70))
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                
                InteractionButton(symbolName: "plus.circle") {
                    numberofSeatsToBook += 1
                }

            }
            
            Spacer()
            
            Button {
                onSelectedConfirm(numberofSeatsToBook)
                dismiss()
            } label: {
                Text(ConstantStrigns.General.confirm)
                    .foregroundStyle(.white)
                    .padding(5)
                  
            }.buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.splash)
        }.padding(.horizontal)
    }
}


