//
//  AnimationScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 01/05/25.
//

import SwiftUI

struct AnimationScreen: View {
    @State var isAnimating = false
    var body: some View {
        VStack {
            Button {
                withAnimation(.default) {
                    isAnimating.toggle()
                }
            } label: {
                Text("Animate")
            }
            Spacer()

            RoundedRectangle(cornerRadius: isAnimating ? 50 : 20)
                .fill(isAnimating ? .blue : .red)
                .frame(
                    width: isAnimating ? 100 : 300,
                    height: isAnimating ? 100 : 300
                )
                .offset(x: isAnimating ? 100 : 0, y: isAnimating ? 300 : 0)
//                .animation(.default, value: isAnimating)
            Spacer()
        }
    }
}

#Preview {
    AnimationScreen()
}
