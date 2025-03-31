//
//  IconScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 30/03/25.
//

import SwiftUI

struct IconScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.red)
                .frame(width: 200, height: 200)
            
            Image(systemName: "folder.badge.plus")
                .resizable()
                .renderingMode(.original)
                .scaledToFit()
                .foregroundStyle(.blue)
                .frame(width: 200, height: 200)
        }
        
    }
}

#Preview {
    IconScreen()
}
