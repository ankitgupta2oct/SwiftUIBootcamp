//
//  TextScreen.swift
//  SwiftUIBootcamp
//
//  Created by Z003MK6T on 28/03/25.
//

import SwiftUI

struct TextScreen: View {
    var body: some View {
        Text("Hello, I am Ankit Gupta. I like to code and learn new things!!!")
            .font(.largeTitle)
            .fontWeight(.heavy)
//            .strikethrough(true, color: .red)
//            .underline(true, color: .green)
            .fontDesign(.default)
            .baselineOffset(10)
            .kerning(1)
            .multilineTextAlignment(.center)
            .foregroundStyle(.indigo)
            .truncationMode(.middle)
            .frame(maxWidth: 200, maxHeight: 200, alignment: .center)
            .minimumScaleFactor(0.1)
            .textSelection(.enabled)
    }
}

#Preview {
    TextScreen()
}
