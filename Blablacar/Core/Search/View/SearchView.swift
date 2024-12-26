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
                                Image(systemName: "chevron.right")
                                                    
                            }.padding(.top)
                                .foregroundStyle(Color(.systemGray2))
                                                
                        }
                    }.padding(.top, 20)
                   
                }.padding(.top, getSafeArea().top + 15)
                    .padding(.horizontal, 20)
                
            }
            
        }
        .fullScreenCover(isPresented: $vm.isNumberOfSeatsToBookScreenState) {
            SelectSeatView(numberofSeatsToBook: $vm.currentJourneyBooking.numberOfSeatsToBook.wrappedValue) { selectedSeatNumber in
                vm.changeNumberOfSeatsNumber(selectedSeatNumber)
            }
        }
        .ignoresSafeArea()
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
        VStack(spacing: 10) {
            SearchItemView(title: $vm.currentJourneyBooking.journey.departure, symbolName: nil).overlay(alignment: .trailing) {
                Image(systemName: "arrow.up.arrow.down")
                    .padding(.trailing)
                    .foregroundStyle(.primary0)
                    .fontWeight(.light)
            }
                                
            Divider().padding(.horizontal)
                               
            SearchItemView(title: $vm.currentJourneyBooking.journey.destination, symbolName: nil)
            Divider().padding(.horizontal)

            SearchItemView(title: $vm.currentJourneyBooking.dateDescription, symbolName: "calendar")
                
            Divider().padding(.horizontal)
            SearchItemView(title: $vm.currentJourneyBooking.numberOfSeatsDescription , symbolName: "person")
                .onTapGesture {
                    withAnimation {
                        vm.isNumberOfSeatsToBookScreenState.toggle()
                    }
                }
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

#Preview {
    SearchView()
}
