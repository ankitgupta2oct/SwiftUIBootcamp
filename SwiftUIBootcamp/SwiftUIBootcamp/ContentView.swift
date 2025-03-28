//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 28/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            NavigationLink("Text", destination: TextScreen())
        }
        .listRowSpacing(10)
        .navigationTitle("SwiftUI Bootcamp")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
