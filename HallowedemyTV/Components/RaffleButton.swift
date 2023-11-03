//
//  RaffleButton.swift
//  HallowedemyTV
//
//  Created by Iago Ramos on 02/11/23.
//

import Foundation
import SwiftUI

struct RaffleButton: View {
    @EnvironmentObject var viewModel: RaffleViewModel
    
    var body: some View {
        VStack {
            Text("Bola sorteada")
                .font(.custom("Sniglet-Regular", size: 40))
                .foregroundStyle(.raffledBall)
                .opacity(viewModel.lastRaffled == nil ? 0 : 1)
            
            Button {
                viewModel.raffle()
            } label: {
                ZStack {
                    Circle()
                        .fill(.bangoOrange)
                        .frame(width: 267, height: 267)
                    
                    Circle()
                        .fill(.bangoLightOrange)
                        .frame(width: 210, height: 210)
                    
                    let isStart = viewModel.lastRaffledWithColumn == nil
                    Text(viewModel.lastRaffledWithColumn ?? "Começar")
                        .foregroundStyle(.white)
                        .font(.custom("Sniglet-Regular", size: isStart ? 45 : 80))
                }
            }
            .buttonStyle(.borderless)
        }
        .padding(.leading, 20)
    }
}
