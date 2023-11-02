//
//  EffectView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import SwiftUI

struct EffectView: View {
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.blue)
                .frame(width: 12, height: 12)
                .modifier(ParticlesModifier())
                .offset(x: -100, y : -50)
            
            Circle()
                .fill(Color.red)
                .frame(width: 12, height: 12)
                .modifier(ParticlesModifier())
                .offset(x: 60, y : 70)
        }
    }
}

#Preview {
    EffectView()
}
