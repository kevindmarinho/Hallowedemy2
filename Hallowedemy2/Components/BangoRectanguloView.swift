////
////  BangoRectanguloView.swift
////  Hallowedemy2
////
////  Created by kevin marinho on 02/11/23.
////
//
//import Foundation
//import SwiftUI
//
//struct BangoRectangleView: View {
//   // let rectangleColor: Color
//    let text: String
//    
//    var body: some View {
//        ZStack{
//            Rectangle()
//                .fill(Color.purple)
//            
//            Text(self.text)
//                .foregroundColor(Color.white)
//                .fixedSize(horizontal: false, vertical: true)
//                .multilineTextAlignment(.center)
//            
//        }.frame(width: 66 , height: 50 )
//    }
//}
//
//#Preview {
//    BangoRectangleView(text: "oi")
//}
//
//
//  BangoRectangleView.swift
//  Sant Academy
//
//  Created by Iago Ramos on 15/12/22.
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
            
        }.frame(width: 66 , height: 50 )
    }
}

