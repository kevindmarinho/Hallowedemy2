//
//  CodeViewModel.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 31/10/23.
//

import Foundation

class CodeViewModel: ObservableObject {
    @Published var currentDickIndex: Int = 3
    @Published var qrCodeDick: String = ""
    
    func qrCodeReading() {
        if currentDickIndex < 5 {
            currentDickIndex += 1
            qrCodeDick = "qrCode\(currentDickIndex)"
        }
    }
}
