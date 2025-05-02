//
//  NavigationStackScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 02/05/25.
//

import SwiftUI

struct NavigationStackScreen: View {
    @State var path: [PageData] =  []
        
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Button("Multiple Jump") {
                    path.append(contentsOf: [
                        PageData(id: 1, title: "Page 1"),
                        PageData(id: 2, title: "Page 2")
                    ])
                }
                
                Button("Next Page") {
                    path.append(PageData(id: 1, title: "Page 1"))
                }
            }
            .navigationDestination(for: PageData.self) { page in
                NavigationSecondScreen(page: page)
            }
        }
    }
}

struct PageData: Hashable, Identifiable {
    var id: Int
    let title: String
}

struct NavigationSecondScreen: View {
    let page: PageData
    
    var body: some View {
        Text("\(page.title)")
    }
}

#Preview {
    NavigationStackScreen()
}
