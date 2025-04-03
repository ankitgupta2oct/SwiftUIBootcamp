//
//  lazyGridsScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/04/25.
//

import SwiftUI

struct LazyGridsScreen: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                Section(header:
                            Text("Section 1")
                                .font(.largeTitle)
                                .padding()
                                .background(.red)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.white)
                ) {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(height: 50)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                                .font(.largeTitle)
                                .padding()
                                .background(.red)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .foregroundStyle(.white)
                ) {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(height: 50)
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    LazyGridsScreen()
}
