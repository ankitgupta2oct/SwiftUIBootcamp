//
//  AnimationTimingScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 01/05/25.
//

import SwiftUI

struct AnimationTimingScreen: View {
    @State private var isAnimating = false
    let timing: Double = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Animate") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(response: timing, dampingFraction: 0.5, blendDuration: 1.0), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.bouncy(duration: timing, extraBounce: 0.5), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingScreen()
}
