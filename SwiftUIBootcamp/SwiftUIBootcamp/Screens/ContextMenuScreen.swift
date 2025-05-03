//
//  ContextMenuScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/05/25.
//

import SwiftUI

struct ContextMenuScreen: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Long press to see context menu")
            Image(systemName: "heart.fill")
                .resizable()
                .foregroundStyle(.red)
                .shadow(color: .red, radius: 10)
                .frame(width: 100, height: 100)
        }
        .contextMenu {
            Button {
                
            } label: {
                Label("Like", systemImage: "hand.thumbsup.fill")
            }

            Button {
                
            } label: {
                Label("Share", systemImage: "square.and.arrow.up.fill")
            }
        }
    }
}

#Preview {
    ContextMenuScreen()
}
