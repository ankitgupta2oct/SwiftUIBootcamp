//
//  ContentUnabailableViewScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct ContentUnavailableViewScreen: View {
    var body: some View {
        VStack {
            ContentUnavailableView(
                "No user found",
                systemImage: "person.fill.xmark",
                description: Text("No user found with give email"))
            
            Divider()
            
            
            ContentUnavailableView.search
        }
    }
}

#Preview {
    ContentUnavailableViewScreen()
}
