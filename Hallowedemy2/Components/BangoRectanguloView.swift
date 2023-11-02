//
//  BangoView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import SwiftUI

struct BangoRectangleView: View {
    let rectangleColor: String
    let text: String
    let font: Font
    let fontWeight: Font.Weight
    let color: Color
    let widthScale: CGFloat
    let heightScale: CGFloat
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(self.rectangleColor))
            
            Text(self.text)
                .font(self.font)
                .fontWeight(self.fontWeight)
                .foregroundColor(color)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
            
        }
        .frame(width: 66)
    }
}

