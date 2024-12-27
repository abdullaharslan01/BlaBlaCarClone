//
//  SplashScreen.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

struct SplashScreen: View {
    @State private var scaleRatio: CGFloat = 1
    @State private var opacityRatio: CGFloat = 1
    @Binding var isSplashcompleted: Bool
    @State var splashOpacityRation: CGFloat = 1
        
    var body: some View {
        ZStack {
            Color.splash.opacity(splashOpacityRation)
                
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .scaleEffect(scaleRatio)
                .opacity(opacityRatio)
                
        }.ignoresSafeArea()
            .onAppear {
                Task {
                        
                    await startAnimation()
                    isSplashcompleted.toggle()
                            
                }
            }
                
    }
         
    func startAnimation() async {
            
        try? await Task.sleep(for: .seconds(2))
            
        for i in 0 ..< 15 {
                
            try? await Task.sleep(for: .seconds(i < 4 ? 0.15 : 0.04))
            withAnimation {
                    
                if i < 4 {
                    scaleRatio -= 0.18
                } else {
                    scaleRatio += 0.8
                    opacityRatio -= 0.08
                    splashOpacityRation -= 0.05
                }
                    
            }
        }
    }
}

#Preview {
    SplashScreen(isSplashcompleted: .constant(true))
}
