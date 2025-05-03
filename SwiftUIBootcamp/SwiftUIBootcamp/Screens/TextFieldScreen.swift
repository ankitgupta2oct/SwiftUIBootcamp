//
//  TextFieldScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/05/25.
//

import SwiftUI

struct TextFieldScreen: View {
    @State private var text = ""
    @State private var textData: [String] = []
    
    var body: some View {
        VStack {
            
            TextField("Enter the value", text: $text)
                .padding()
                .background(Color.gray.opacity(0.4))
                .clipShape(.rect(cornerRadius: 10))
                .padding()
            
            Button("Save") {
                guard isTextValid() else { return }
                
                textData.append(text)
                text = ""
            }
            .disabled(!isTextValid())
            .foregroundStyle(.white)
            .padding()
            .background(isTextValid() ? .blue : .gray.opacity(0.4))
            .clipShape(.rect(cornerRadius: 10))
            
            List {
                ForEach(textData, id: \.self) { item in
                    Text(item)
                }
            }
            
            Spacer()
        }
    }
    
    func isTextValid() -> Bool {
        let isValid = !text.isEmpty && text.count >= 5
        print(isValid)
        return isValid
    }
}

#Preview {
    TextFieldScreen()
}
