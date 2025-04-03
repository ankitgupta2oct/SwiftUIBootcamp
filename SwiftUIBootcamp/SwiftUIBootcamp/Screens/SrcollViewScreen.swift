//
//  SrcollViewScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/04/25.
//

import SwiftUI

struct SrcollViewScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    Rectangle()
                        .fill(.red)
                        .frame(width: .infinity, height: 200)
                        .padding(.horizontal)
                        .overlay{
                            Text("\(index)")
                                .font(.title)
                        }
                }
            }
        }
        .scrollIndicators(.never)
    }
}

#Preview {
    SrcollViewScreen()
}
