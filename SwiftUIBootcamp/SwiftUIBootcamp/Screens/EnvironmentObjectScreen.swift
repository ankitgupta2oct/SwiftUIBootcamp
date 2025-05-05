//
//  EnvironmentObjectScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 04/05/25.
//

import SwiftUI

final class EnvironmentObjectViewModel: ObservableObject {
    let TabTittles: [String] = ["Hello Tab1", "Hello Tab2", "Hello Tab3"]
}

struct EnvironmentObjectScreen: View {
    @StateObject var viewModel: EnvironmentObjectViewModel = EnvironmentObjectViewModel()
    
    @State var selectedTabIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            Tab("Home", systemImage: "house", value: 0) {
                EnvironmentObjectChildScreen(index: 0)
            }
            
            Tab("Download", systemImage: "tray.and.arrow.down.fill", value: 1) {
                EnvironmentObjectChildScreen(index: 1)
            }
            
            Tab("Share", systemImage: "square.and.arrow.up", value: 2) {
                EnvironmentObjectChildScreen(index: 2)
            }
        }
        .environmentObject(viewModel)
    }
}

public struct EnvironmentObjectChildScreen: View {
    let index: Int
    @EnvironmentObject var viewModel: EnvironmentObjectViewModel
    
    public var body: some View {
        Text(viewModel.TabTittles[index])
    }
}


#Preview {
    EnvironmentObjectScreen()
}
