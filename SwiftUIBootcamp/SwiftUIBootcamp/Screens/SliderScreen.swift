//
//  SliderScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/05/25.
//

import SwiftUI

struct SliderScreen: View {
    @State private var sliderValue: Double = 0
    var body: some View {
        VStack {
            Text("Value \(String(format: "%.0f", sliderValue))")
            
            Slider(value: $sliderValue, in: 0...10, step: 1.0) { isEditing in
                print("isEditing \(isEditing) Value \(sliderValue)")
            }
        }
    }
}

#Preview {
    SliderScreen()
}
