//
//  TransationAnimationScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 01/05/25.
//

import SwiftUI

struct TransationAnimationScreen: View {
    @State private var showAnimation = false
    
    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(.easeIn) {
                    showAnimation.toggle()
                }
            }
            
            Spacer()
            
            if showAnimation {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black)
                    .frame(width: .infinity, height: 400)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .opacity)
                    )
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransationAnimationScreen()
}
