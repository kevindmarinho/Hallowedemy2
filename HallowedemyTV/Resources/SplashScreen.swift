//
//  SplashScreen.swift
//  Hallowedemy2
//
//  Created by Iago Ramos on 02/11/23.
//

import SwiftUI

struct SplashScreen: View {
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            Image(.splashBackground)
                .resizable()
            
            Text("HALLOWEEN\nACADEMY")
                .font(.custom("Halloween Morning", size: 150))
                .foregroundStyle(.bangoSplashOrange)
                .multilineTextAlignment(.center)
        }
        .ignoresSafeArea()
        
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                withAnimation{
                    self.isActive = false
                }
            }
        }
    }
}

#Preview {
    SplashScreen(isActive: .constant(true))
}
