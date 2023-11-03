//
//  RaffledNumbers.swift
//  HallowedemyTV
//
//  Created by Iago Ramos on 02/11/23.
//

import Foundation
import SwiftUI

struct RaffledNumbers: View {
    @EnvironmentObject var viewModel: RaffleViewModel
    let items = Array(repeating: GridItem(.flexible(), spacing: 0), count: 10)
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 10) {
            ForEach(1..<76) { number in
                ZStack {
                    let wasRaffled = viewModel.raffledNumbers.contains(number)
                    
                    Circle()
                        .foregroundStyle(wasRaffled ? .raffledBall : .nonRaffledBall)
                    
                    Text(number.description)
                        .foregroundStyle(wasRaffled ? .bangoOrange : .nonRaffledBallText)
                        .font(.custom("Sniglet-Regular", size: 30))
                }
                .frame(width: 52, height: 52)
            }
        }
        .padding(.trailing, 3)
    }
}
