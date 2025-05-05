//
//  PopoverScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct PopoverScreen: View {
    @State private var showPopover = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Show Popover") {
                showPopover.toggle()
            }
            
            Text("Hello, World!")
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
                    Text("Hello, Popover!")
                        .presentationCompactAdaptation(.popover)
                }
        }
    }
}

#Preview {
    PopoverScreen()
}
