//
//  RootView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct RootView: View {
    @State var vm = RootViewModel()
    
    var body: some View {
        ZStack {
            if vm.isSplashScreenCompleted {
                MainTabbarView()
                    .transition(.opacity)
            } else {
                SplashScreen(isSplashcompleted: $vm.isSplashScreenCompleted)
            }
            
        }.animation(.easeInOut, value: vm.isSplashScreenCompleted)
    }
}
#Preview {
    RootView()
}
