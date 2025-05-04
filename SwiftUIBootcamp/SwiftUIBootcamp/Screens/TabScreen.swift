//
//  TabScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 04/05/25.
//

import SwiftUI

struct TabScreen: View {
    @State var selectedTabIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            Tab("Home", systemImage: "house", value: 0) {
                TabViewChildScreen(tabIndexes: [1, 2], selectedTabIndex: $selectedTabIndex)
            }
            
            Tab("Download", systemImage: "tray.and.arrow.down.fill", value: 1) {
                TabViewChildScreen(tabIndexes: [0, 2], selectedTabIndex: $selectedTabIndex)
            }
            
            Tab("Share", systemImage: "square.and.arrow.up", value: 2) {
                TabViewChildScreen(tabIndexes: [0, 1], selectedTabIndex: $selectedTabIndex)
            }
        }
    }
}

public struct TabViewChildScreen: View {
    let tabIndexes: [Int]
    @Binding var selectedTabIndex: Int
    
    public var body: some View {
        VStack(spacing: 20) {
            ForEach (tabIndexes, id: \.self) { index in
                Button("Go to Tab \(index)") {
                    selectedTabIndex = index
                }
                .foregroundStyle(.white)
                .frame(width: 100, height: 50)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    TabScreen()
}
