//
//  BindingScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 01/05/25.
//

import SwiftUI

struct BindingScreen: View {
    @State var number: Int = 0
    var body: some View {
        ZStack {
            ExtractedView(number: $number, fruit: "Apple")
                .padding()
        }
        .background(.red)
    }
}

#Preview {
    BindingScreen()
}

struct ExtractedView: View {
    @Binding var number: Int
    let fruit: String
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.title)
                .foregroundStyle(.white)
            
            Text(fruit)
                .font(.title)
                .foregroundStyle(.white)
        }
        .onTapGesture {
            number += 1
        }
    }
}
