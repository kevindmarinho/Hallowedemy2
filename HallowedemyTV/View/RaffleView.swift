//
//  RaffleView.swift
//  HallowedemyTV
//
//  Created by Iago Ramos on 01/11/23.
//

import SwiftUI

struct RaffleView: View {
    @EnvironmentObject var viewModel: RaffleViewModel
    
    var body: some View {
        HStack {
            RaffleButton()
            Spacer()
            RaffledNumbers()
        }
        .background {
            Color.wineBackground
                .ignoresSafeArea()
            
            Color.purpleBackground
            
                .ignoresSafeArea()
                .padding(.horizontal, 90)
            
            Image(.background)
                .resizable()
                .scaledToFill()
                .padding(.top, -180)
            
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.height,
                       alignment: .top)
                
        }
    }
}

#Preview {
    RaffleView()
        .environmentObject(RaffleViewModel())
}
