//
//  SearchView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftfulUI
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
                                                                                            
                            HistoryRowView(title: journey.description())
                                                                                                
                        }
                                            
                    }
                    .padding(.top, 20)
                    .padding(.bottom, getSafeArea().bottom + 100)
                        
                }.padding(.top, getSafeArea().top + 15)
                    .padding(.horizontal, 20)
                    
            }
            
        }
        .scrollIndicators(.hidden)
        .fullScreenCover(isPresented: $vm.isNumberOfSeatsToBookScreenState) {
            SelectSeatView(numberofSeatsToBook: $vm.currentJourneyBooking.numberOfSeatsToBook.wrappedValue) { selectedSeatNumber in
                vm.changeNumberOfSeatsNumber(selectedSeatNumber)
            }
        }
        .fullScreenCover(isPresented: $vm.isGoingToScreenState, content: {
            SelectLocationView(selectedCity: $vm.currentJourneyBooking.journey.destination.wrappedValue, cities: vm.cityRecomendadations, onTapCity: { city in
                
                vm.changeGoingToCity(city)
                
            })
        })
        
        .fullScreenCover(isPresented: $vm.isLeavingToScreenState, content: {
            SelectLocationView(selectedCity: $vm.currentJourneyBooking.journey.departure.wrappedValue, cities: vm.cityRecomendadations, onTapCity: { city in
                vm.changeLeavingCity(city)
                        
            })
        })
        .ignoresSafeArea()
    }
}

extension SearchView {
    var bannerImage: some View {
        Image("\(Images.Assets.appBanner)")
            .resizable()
            .scaledToFill()
            .containerRelativeFrame([.vertical, .horizontal]) { size, axis in
                if axis == .horizontal {
                    size
                } else {
                    size * 0.8
                }
            }.ignoresSafeArea()
            .asStretchyHeader(startingHeight: UIScreen.main.bounds.height * 0.5)
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
            SearchItemView(title: $vm.currentJourneyBooking.journey.departure, symbolName: nil)
                .onTapGesture {
                    withAnimation {
                        vm.isLeavingToScreenState.toggle()
                    }
                }
                .overlay(alignment: .trailing) {
                    Image(systemName: "arrow.up.arrow.down")
                        .padding(.trailing)
                        .foregroundStyle(.primary0)
                        .fontWeight(.light)
                        .onTapGesture {
                            withAnimation {
                                vm.switchCities()
                            }
                        }
                }
                                
            Divider().padding(.horizontal)
                               
            SearchItemView(title: $vm.currentJourneyBooking.journey.destination, symbolName: nil)
                .onTapGesture {
                    withAnimation {
                        vm.isGoingToScreenState.toggle()
                    }
                }
            Divider().padding(.horizontal)

            SearchItemView(title: $vm.currentJourneyBooking.dateDescription, symbolName: "calendar")
                
            Divider().padding(.horizontal)
            SearchItemView(title: $vm.currentJourneyBooking.numberOfSeatsDescription, symbolName: "person")
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
    MainTabbarView()
}
