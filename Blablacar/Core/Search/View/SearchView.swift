//
//  SearchView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .top) {
               
                bannerImage
                
                VStack {
                    
                    titleText
                    
                    VStack(spacing: 20) {
                        SearchItemView(title: ConstantStrigns.Search.leavingFrom, symbolName: nil)
                        Divider()
                        SearchItemView(title: ConstantStrigns.Search.goingto, symbolName: nil)
                        Divider()
                        SearchItemView(title: ConstantStrigns.Search.today, symbolName: "calendar")
                        Divider()
                        SearchItemView(title: "1", symbolName: "person")
                        Button {} label: {
                            Text("Ara")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 55)
                                .background(.splash)
                        }
                    }
                    .padding(.top, 10)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 16))
                    .padding(.horizontal, 20)
                    .padding(.top, 80)
                    
                }.padding(.top, getSafeArea().top + 15)
                
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
}

struct SearchItemView: View {
    @State var title: String
    let symbolName: String?
    let color: Color
    
    init(title: String, symbolName: String?, color: Color = Color.gray) {
        self.title = title
        self.symbolName = symbolName
        self.color = color
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
                .foregroundStyle(color)
                .fontWeight(.semibold)
                
        }
        .padding([.horizontal, .top])
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    SearchView()
}
