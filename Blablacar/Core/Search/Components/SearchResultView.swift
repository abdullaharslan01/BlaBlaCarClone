//
//  SearchResultView.swift
//  Blablacar
//
//  Created by abdullah on 27.12.2024.
//

import SwiftUI

struct SearchResultView: View {

    
    var searchResults = [SearchResult]()
    
    @Binding var tabbarVisibility: Visibility
    
    
    
    var body: some View {
        VStack {

            SearchResultHeaderView()
                .padding(.horizontal)
                .padding(.bottom, 10)
            ScrollView {
                ZStack {
                    Color.resultBackground.ignoresSafeArea()

                    VStack(spacing: 20) {
                        resultDateView
                        
                        ForEach(searchResults) { result in
                            ResultCardView(result: result)
                        }
                        

                    }.padding(.horizontal)
                        .padding(.bottom, getSafeArea().bottom + 75)

                }

            }

        }.onAppear {
            tabbarVisibility = .hidden
        }
    }

    var resultDateView: some View {
        Text("Tomorrow")
            .font(.title)
            .padding(.top, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}


struct SearchResultHeaderView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {

        HStack {

            HStack {
                Image(systemName: "chevron.left")
                    .font(.system(size: 16))
                    .padding(.trailing, 10)
                    .foregroundStyle(Color(.systemGray))
                    .frame(width: 40, height: 30)
                    .onTapGesture {
                        dismiss()
                    }

                VStack(alignment: .leading) {
                    Text("Adana -> Gaziantep")
                        .lineLimit(1)
                        .foregroundStyle(Color(.label))

                    Text("Bugün, 1 Yolcu")
                        .foregroundStyle(Color(.systemGray))
                }.font(.system(size: 13))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Filtrele")
                    .font(.callout)
                    .foregroundStyle(.splash)
                    .padding(.trailing)
                    .padding(.leading, 5)

            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(.systemGray), lineWidth: 0.4)
                )
        }.background(.black)
    }
}

struct WaySeperatorView: View {
    var body: some View {
        VStack(spacing: 0) {
            Circle()
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 15, height: 15)

            Rectangle()
                .fill(Color.white)
                .frame(width: 5, height: 30)

            Circle()
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 15, height: 15)

        }.frame(height: 55)
    }
}
