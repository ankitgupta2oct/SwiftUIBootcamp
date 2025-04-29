//
//  ForEachScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 29/04/25.
//

import SwiftUI

struct ForEachScreenModel: Identifiable {
    var id: UUID = UUID()
    var title: String
}

struct ForEachScreen: View {
    let titles = [
        ForEachScreenModel(title: "First"),
        ForEachScreenModel(title: "Second"),
        ForEachScreenModel(title: "Third")
    ]
    
    var body: some View {
        VStack {
            ForEach(titles) { data in
                Text("\(data.title)")
            }
        }
    }
}

#Preview {
    ForEachScreen()
}
