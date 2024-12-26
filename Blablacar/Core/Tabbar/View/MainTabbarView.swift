//
//  MainTabbarView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct MainTabbarView: View {
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    
    @State var vm = MainTabbarViewModel()
    
    var body: some View {
        TabView(selection: $vm.selectedTab) {
            SearchView()
                .tag(Tab.search)
            
            PublishView()
                .tag(Tab.publish)
            
            RidesView()
                .tag(Tab.rides)
            
            InboxView()
                .tag(Tab.inbox)
            
            ProfileView()
                .tag(Tab.profile)
        }.overlay(alignment: .bottom) {
            BCTabView(selectedTab: $vm.selectedTab)
                
        }.ignoresSafeArea(.all,edges: .bottom)
    }
}

#Preview {
    MainTabbarView()
}
