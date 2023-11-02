//
//  BangoRectanguloView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import Foundation
import SwiftUI

struct BangoRectangleView: View {
    let text: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.purple)
            
            Text(self.text)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
            
        }.frame(width: 50 , height: 50 )
    }
}

#Preview {
    BangoRectangleView(text: "oi")
}

