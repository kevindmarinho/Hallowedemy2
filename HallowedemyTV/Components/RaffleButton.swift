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
                    
                    Text(viewModel.lastRaffledWithColumn ?? "Start")
                        .foregroundStyle(.white)
                        .font(.title)
                }
            }
            .buttonStyle(.borderless)
        }
        .padding(.leading, 20)
    }
}
