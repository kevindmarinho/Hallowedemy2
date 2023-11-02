//
//  EffectViewModel.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//

import Foundation
import SwiftUI

struct ConfettiParticle: GeometryEffect {
    var time: Double
    var speed = Double.random(in: 20 ... 200)
    var direction = Double.random(in: -Double.pi ... Double.pi)
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }

    func effectValue(size: CGSize) -> ProjectionTransform {
        let xTranslation  = speed * cos(direction) * time
        let yTranslation = speed * sin(direction) * time
        let affineTranslation = CGAffineTransform(translationX: xTranslation, y: yTranslation)
        return ProjectionTransform(affineTranslation)
    }
}

struct ParticlesModifier: ViewModifier {

    @State var time = 0.0
    @State var scale = 0.1
    let duration = 5.0
  
    func body(content: Content) -> some View {
        ZStack{
            ForEach(0..<80, id: \.self){ index in
                content
                    .hueRotation(Angle(degrees: time * 80))
                    .scaleEffect(scale)
                    .modifier(ConfettiParticle(time: time))
                    .opacity(((duration-time) / duration))
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: duration)){
                self.time = duration
                self.scale = 1.0
            }
        }
    }
}
