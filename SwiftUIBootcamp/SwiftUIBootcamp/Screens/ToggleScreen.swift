//
//  SwitchScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/05/25.
//

import SwiftUI

struct ToggleScreen: View {
    @State private var isOnline: Bool = false
    
    var body: some View {
        VStack {
            Text("Online Status: \(isOnline ? "Online" : "Offline")")
                .bold()
            Toggle("Change Online Status", isOn: $isOnline)
                .padding()
                .tint(.green)
        }
    }
}

#Preview {
    ToggleScreen()
}
