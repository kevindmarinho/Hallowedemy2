//
//  RaffleViewModel.swift
//  HallowedemyTV
//
//  Created by Iago Ramos on 02/11/23.
//

import Foundation

final class RaffleViewModel: ObservableObject {
    @Published private(set) var lastRaffled: Int? {
        didSet {
            guard let lastRaffled = lastRaffled, let column = getColumn(for: lastRaffled) else { return }
            
            lastRaffledWithColumn = "\(column) \(lastRaffled)"
            raffledNumbers.append(lastRaffled)
        }
    }
    
    @Published private(set) var lastRaffledWithColumn: String?
    @Published private(set) var raffledNumbers: [Int] = []
    
    private var allNumbers = Array(1...75)
    
    func raffle() {
        guard allNumbers.count > 0 else { return }
        lastRaffled = allNumbers.remove(at: Int.random(in: 0...(allNumbers.count - 1)))
    }
    
    func getColumn(for number: Int) -> String? {
        switch number {
        case 1...15:
            return "B"
        case 16...30:
            return "A"
        case 31...45:
            return "N"
        case 46...65:
            return "G"
        case 66...75:
            return "O"
        default:
            return nil
        }
    }
}
