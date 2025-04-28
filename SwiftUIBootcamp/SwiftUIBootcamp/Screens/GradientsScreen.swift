//
//  GradientsScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 30/03/25.
//

import SwiftUI

struct GradientsScreen: View {
    var body: some View {
        VStack(spacing: 50) {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.red, .green], startPoint: .leading, endPoint: .trailing))
                .frame(width: 300, height: 100)
            
            Circle()
                .fill(RadialGradient(colors: [.blue, .yellow], center: .center, startRadius: 0, endRadius: 100))
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(AngularGradient(gradient: Gradient(colors: [.red, .black, .yellow]), center: .center))
                .frame(width: 200, height: 200)
            
        }
    }
}

#Preview {
    GradientsScreen()
}
