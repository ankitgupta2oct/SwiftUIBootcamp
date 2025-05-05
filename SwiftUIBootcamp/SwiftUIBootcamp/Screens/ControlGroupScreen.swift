//
//  ControlGroupScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct ControlGroupScreen: View {
    var body: some View {
        Menu("Select Item") {
            Button("First") {}
            
            Button("Second") {}
            
            Button("Third") {}
            
            ControlGroup("How are you feeling") {
                Button("Happy") {}
                
                Button("Sad") {}
                
                Button("I don't know") {}
            }
        }
    }
}

#Preview {
    ControlGroupScreen()
}
