//
//  ResizableSheetScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct ResizableSheetScreen: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        Button("Show Sheet") {
            isPresented.toggle()
        }
        .sheet(isPresented: $isPresented) {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                
                Text("Hello")
            }
//            .presentationDetents([.medium, .large])
//            .presentationDetents([.fraction(0.8)])
//            .presentationDetents([.height(200)])
            .presentationDetents([.fraction(0.1)])
            .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    ResizableSheetScreen()
}
