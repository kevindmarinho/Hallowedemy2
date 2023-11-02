//
//  SplashView.swift
//  Hallowedemy2
//
//  Created by Letícia Victoria das Neves Sales on 02/11/23.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    @State private var titleOpacity = 0.0

    var body: some View {
        
        if isActive {
            HomeView()
        } else {
            ZStack{
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                Image("title")
                    .opacity(titleOpacity)
                    .onAppear{
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.titleOpacity = 1.0
                        }
                    }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                    
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}


#Preview {
    SplashView()
}
