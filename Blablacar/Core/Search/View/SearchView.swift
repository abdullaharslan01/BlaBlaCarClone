//
//  SearchView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct SearchView: View {
    @State var vm = SearchViewModel()
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .top) {
               
                bannerImage
                
                VStack {
                    
                    titleText
                    
                    locationPreferanceView
                    
                    VStack {
                        ForEach(vm.historyJourneys) { journey in
                                            
                            HStack {
                                                    
                                Image(systemName: "clock")
                                Text(journey.description())
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(.white)
                                Image(systemName:"chevron.right")
                                                    
                            }.padding(.top)
                                .foregroundStyle((Color(.systemGray2)))
                                                
                        }
                    }.padding(.top, 20)
                   
                }.padding(.top, getSafeArea().top + 15)
                    .padding(.horizontal, 20)
                
            }
            
        }.ignoresSafeArea()
    }
}

extension SearchView {
    var bannerImage: some View {
        Image(Images.Assets.appBanner)
            .resizable()
            .scaledToFill()
            .containerRelativeFrame([.vertical, .horizontal]) { size, axis in
                if axis == .horizontal {
                    size
                } else {
                    size * 0.5
                }
            }
    }
    
    var titleText: some View {
        Text(ConstantStrigns.Search.title)
            .foregroundStyle(.white)
            .font(.title)
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
        
    }
    
    var locationPreferanceView: some View {
        VStack(spacing: 20) {
            SearchItemView(title: ConstantStrigns.Search.leavingFrom, symbolName: nil) {}.overlay(alignment: .trailing) {
                Image(systemName: "arrow.up.arrow.down")
                    .padding(.trailing)
                    .foregroundStyle(.primary0)
                    .fontWeight(.light)
            }
                                
            Divider().padding(.horizontal)
                               
            SearchItemView(title: ConstantStrigns.Search.goingto, symbolName: nil) {}
            Divider().padding(.horizontal)

            SearchItemView(title: ConstantStrigns.Search.today, symbolName: "calendar", color: .white) {}
            Divider().padding(.horizontal)
            SearchItemView(title: "1", symbolName: "person") {}
            Button {} label: {
                Text("Ara")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.splash)
            }
        }
        .padding(.top, 10)
        .background(Color(.systemGray5))
        .clipShape(.rect(cornerRadius: 16))
        .padding(.top, 80)
    }
}

struct SearchItemView: View {
    @State var title: String
    let symbolName: String?
    let labelColor: Color
    var onTapGesture: ()->()
    
    init(title: String, symbolName: String?, color: Color = Color.gray, onTapGesture: @escaping ()->()) {
        self.title = title
        self.symbolName = symbolName
        self.labelColor = color
        self.onTapGesture = onTapGesture
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
                .font(.footnote)
                .foregroundStyle(labelColor)
                .fontWeight(.semibold)
                
        }
        .padding([.horizontal, .top])
        .frame(maxWidth: .infinity, alignment: .leading)
        .onTapGesture {
            onTapGesture()
        }
    }
}

#Preview {
    SearchView()
}
