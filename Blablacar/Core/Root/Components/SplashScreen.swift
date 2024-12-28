//
//  SplashScreen.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct SplashScreen: View {
    @State private var scaleRatio: CGFloat = 1
    @Binding var isSplashcompleted: Bool
        
    var body: some View {
        ZStack {
            Color.splash
                
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleRatio)
                
        }.ignoresSafeArea()
            .onAppear {
                Task {
                        
                    await startAnimation()
                    isSplashcompleted.toggle()
                            
                }
            }
                
    }
         
    func startAnimation() async {
            
        try? await Task.sleep(for: .seconds(4))
            
       
    }
}

#Preview {
    SplashScreen(isSplashcompleted: .constant(true))
}
