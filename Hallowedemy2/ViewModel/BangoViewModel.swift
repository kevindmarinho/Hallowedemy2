//
//  CartelaViewModel.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import Foundation

class BangoViewModel: ObservableObject{
    @Published var card: [String: [String]] = [:]
    @Published var selectedRecs: [String: [Bool]] = [:]
    @Published var recsRemaining: Int = 24
    
    init() {
        self.resetBango()
    }
    
    func updateRecs(_ key: String, _ pos: Int) {
        guard var selectedRec = selectedRecs[key] else { return }
        selectedRec[pos].toggle()
        selectedRecs[key] = selectedRec
        recsRemaining += selectedRec[pos] ? -1 : 1
    }

    
    func resetBango(){
        self.card = [
            "b": self.getColumn(1, 5),
            "a": self.getColumn(16, 5),
            "n": self.getColumn(31, 4),
            "g": self.getColumn(46, 5),
            "o": self.getColumn(61, 5)
        ]
        
        let falseArray = [false, false, false, false, false]
        self.selectedRecs = [
            "b": falseArray,
            "a": falseArray,
            "n": falseArray,
            "g": falseArray,
            "o": falseArray
        ]
        
        self.recsRemaining = 24
    }
    
    private func getColumn(_ min: Int, _ quant: Int) -> [String] {
        let numbers = self.getColumnNumbers(min, quant)
        var formattedNumbers = numbers.map { String(format: "%02d", $0) }
        if quant == 4 {
            formattedNumbers.insert("", at: 2)
        }
        return formattedNumbers
    }
    
    private func getColumnNumbers(_ min: Int, _ quant: Int) -> [Int] {
        var numbers = Set<Int>()
        while numbers.count < quant {
            let randomNumber = self.randomNumber(min)
            numbers.insert(randomNumber)
        }
        return Array(numbers).sorted()
    }
    
    private func randomNumber(_ min: Int) -> Int{
        return Int.random(in: min...(min + 14))
    }
}
