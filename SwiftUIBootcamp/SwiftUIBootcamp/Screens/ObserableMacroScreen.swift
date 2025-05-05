//
//  ObserableMacroScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

@Observable final class ObserableMacroScreenViewModel {
    var TabTittles: [String] = ["Hello Tab1", "Hello Tab2", "Hello Tab3"]
    
    @ObservationIgnored var isLoading: Bool = false
}

struct ObserableMacroScreen: View {
    @State var viewModel: ObserableMacroScreenViewModel = ObserableMacroScreenViewModel()
    
    @State var selectedTabIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            Tab("Home", systemImage: "house", value: 0) {
                ObserableMacroChildScreen(index: 0)
            }
            
            Tab("Download", systemImage: "tray.and.arrow.down.fill", value: 1) {
                ObserableMacroChildScreen(index: 1)
            }
            
            Tab("Share", systemImage: "square.and.arrow.up", value: 2) {
                ObserableMacroChildScreen(index: 2)
            }
        }
        .environment(viewModel)
    }
}

public struct ObserableMacroChildScreen: View {
    let index: Int
    @Environment(ObserableMacroScreenViewModel.self) var viewModel
    
    public var body: some View {
        Text(viewModel.TabTittles[index])
    }
}

#Preview {
    ObserableMacroScreen()
}
