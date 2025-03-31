//
//  ImageScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 31/03/25.
//

import SwiftUI

struct ImageScreen: View {
    var body: some View {
        VStack {
            Image("google")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.red)
                .frame(width: 300, height: 200)
            
            Image("rock")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ImageScreen()
}
