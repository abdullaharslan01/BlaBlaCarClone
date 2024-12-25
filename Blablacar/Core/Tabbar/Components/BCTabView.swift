//
//  BCTabView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct BCTabView: View {
    
    @Binding var selectedTab: Tab
        
    @AppStorage("profileImage") var profilImageUrl: String = "profile"
    
    var body: some View {
       
        HStack {
                    
            ForEach(Tab.allCases, id: \.tabName) { tab in
                tabItem(tab)
                    .onTapGesture {
                        withAnimation {
                            selectedTab = tab
                        }
                    }
            }
        }
        .padding(.top, 10)
        .overlay(alignment: .top) {
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(height: 1)
        }.padding(.bottom, getSafeArea().bottom == 0 ? 5 : getSafeArea().bottom - 15)
            
    }
    
    @ViewBuilder
    func tabItem(_ tab: Tab) -> some View {
       
        var tabText: Text {
            Text(tab.tabName)
                .font(.footnote)
                .fontDesign(.rounded)
        }
        
        VStack(spacing: 5) {
            
            if tab == .profile && profilImageUrl != "" {
                Image(profilImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 30)
                    .clipShape(.circle)
            } else {
                Image(systemName: tab.image)
                    .font(.title3)
            }
            
            tabText
        }.foregroundStyle(selectedTab == tab ? .primary0 : .gray.opacity(0.6))
            .frame(maxWidth: .infinity)
        
    }
    
}

#Preview {
    BCTabView(selectedTab: .constant(.inbox))
}
