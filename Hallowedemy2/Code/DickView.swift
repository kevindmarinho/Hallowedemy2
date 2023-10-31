//
//  ContentView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 31/10/23.
//

import SwiftUI

struct DickView: View {
    @ObservedObject var viewModel = CodeViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            
            Text("Pista atual: \(viewModel.currentDickIndex + 1)/5")
            
            Text(CodeModel().CodeData[viewModel.qrCodeDick, default: "Texto Padrao"])
            
        }
        .padding()
    }
}

#Preview {
    DickView()
}
