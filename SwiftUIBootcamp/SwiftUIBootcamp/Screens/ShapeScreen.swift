//
//  ShapeScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 28/03/25.
//

import SwiftUI

struct ShapeScreen: View {
    var body: some View {
        Circle()
//        Rectangle()
//        RoundedRectangle(cornerRadius: 20)
//            .trim(from: 0, to: 0.7)
            .fill(.blue)
            .stroke(.green, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapeScreen()
}
