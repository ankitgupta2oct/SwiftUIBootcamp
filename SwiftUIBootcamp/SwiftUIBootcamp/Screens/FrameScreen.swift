//
//  FrameScreen.swift
//  SwiftUIBootcamp
//
//  Created by apple on 02/04/25.
//

import SwiftUI

struct FrameScreen: View {
    var body: some View {
        Text("Hello, World!")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.green)
            .frame(width: 150, alignment: .leading)
            .background(.blue)
            .frame(height: 200, alignment: .top)
            .background(.cyan)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .center)
            .background(.purple)
    }
}

#Preview {
    FrameScreen()
}
