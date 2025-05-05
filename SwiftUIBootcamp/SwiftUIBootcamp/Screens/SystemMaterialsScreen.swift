//
//  SystemMaterialsScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct SystemMaterialsScreen: View {
    var body: some View {
        ZStack {
            Image("rock")
                .resizable()
                .scaledToFit()
            
            Circle()
                .fill(.ultraThinMaterial)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    SystemMaterialsScreen()
}
