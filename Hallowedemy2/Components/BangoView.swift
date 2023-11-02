//
//  BangoView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import SwiftUI

struct BangoView: View {
    @ObservedObject var viewModel = BangoViewModel()
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let bango = Array("bango")
    
    var body: some View {
        ZStack {
            HStack {
                LazyHGrid(rows: rows) {
                    ForEach(bango, id: \.self){ bangoLetter in
                        
                        BangoRectangleView(
                            text: String(bangoLetter).uppercased()
                        )
                        
                        let sortedNumbers = viewModel.card[String(bangoLetter)]!
                        
                        ForEach(0..<5){ i in
                            let isNumber = Int(sortedNumbers[i]) != nil
                            
                            Button {
                                if(isNumber){
                                    viewModel.updateRecs(String(bangoLetter), i)
                                }
                            } label: {
                                BangoRectangleView(text: String(sortedNumbers[i]))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    BangoView()
}
