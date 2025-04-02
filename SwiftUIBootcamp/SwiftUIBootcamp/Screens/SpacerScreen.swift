//
//  SpacerScreen.swift
//  SwiftUIBootcamp
//
//  Created by apple on 02/04/25.
//

import SwiftUI

struct SpacerScreen: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.black)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.black)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.black)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.black)
        }
        .background(.yellow)
        .padding(.horizontal, 200)
        .background(.gray)
    }
}

#Preview {
    SpacerScreen()
}
