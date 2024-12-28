//
//  JourneysView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct RidesView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(Images.Assets.publishImage)
                .resizable()
                .scaledToFill()
                .containerRelativeFrame(.horizontal)
                .frame(height: 200)
            
            Text(ConstantStrigns.Rides.upcoming)
                .lineLimit(2)
                .font(.title)
                .foregroundStyle(.title)
                .padding(.top, 30)
                .padding(.leading)
                .containerRelativeFrame(.horizontal)
                .padding(.bottom, 40)
            
            Text(ConstantStrigns.Rides.subTitleMessage)
                .font(.callout)
                .foregroundStyle(.subTitle)
                .padding(.horizontal, 10)
                .padding(.bottom, 40)
            
            Button {} label: {
                
                HStack {
                    Text(ConstantStrigns.Rides.archiveJourneys)
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image(systemName: "chevron.right")
                }.padding(.horizontal)
                    .foregroundStyle(.title)
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    RidesView()
}
