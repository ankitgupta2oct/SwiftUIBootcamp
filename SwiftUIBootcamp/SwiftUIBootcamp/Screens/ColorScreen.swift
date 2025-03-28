//
//  ColorScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 28/03/25.
//

import SwiftUI

struct ColorScreen: View {
    var body: some View {
        Circle()
            .fill(.red)
//            .fill(Color(uiColor: .systemRed))
            .shadow(color: .green, radius: 10, x: 0, y: 0)
    }
}

#Preview {
    ColorScreen()
}
