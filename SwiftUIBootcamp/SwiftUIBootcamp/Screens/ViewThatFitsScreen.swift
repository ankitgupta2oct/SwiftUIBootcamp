//
//  ViewThatFitsScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct ViewThatFitsScreen: View {
    @State private var width: CGFloat = 400
    
    var body: some View {
        VStack {
            Button("Change Width") {
                if(width == 100) {
                    width = 400
                    return
                }
                
                width -= 100
            }
            
            ViewThatFits {
                Text("Hello, I am learing SwiftUI and iOS programming")
                Text("Hello, I am learing SwiftUI and iOS")
                Text("Hello, I am learing SwiftUI")
            }
            .frame(width: width, height: 200)
            .background(.red)
        }
    }
}

#Preview {
    ViewThatFitsScreen()
}
