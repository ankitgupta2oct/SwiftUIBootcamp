//
//  OverlayAndBackgroundScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 28/04/25.
//

import SwiftUI

struct OverlayAndBackgroundScreen: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundStyle(.white)
            .font(.system(size: 60))
            .frame(width: 150, height: 150)
            .background {
                Circle()
                    .fill(.purple)
                    .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 50, height: 50)
                            .overlay {
                                Text("5")
                                    .font(.title)
                                    .foregroundStyle(.white)
                            }
                            .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
                    }
            }
    }
}

#Preview {
    OverlayAndBackgroundScreen()
}
