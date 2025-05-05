//
//  FoucsStateScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct FoucsStateScreen: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @FocusState var focusField: FieldType?
    
    var body: some View {
        TextField("User name", text: $username)
            .focused($focusField, equals: .username)
            .padding()
            .background(.gray.opacity(0.5))
            .padding()
        
        SecureField("Password", text: $password)
            .focused($focusField, equals: .password)
            .padding()
            .background(.gray.opacity(0.5))
            .padding()
        
        Button("Submit") {
            if(username.isEmpty) {
                focusField = .username
                return
            }
            
            if(password.isEmpty) {
                focusField = .password
                return
            }
            
            username = ""
            password = ""
        }
    }
    
    enum FieldType {
        case username, password
        
    }
}

#Preview {
    FoucsStateScreen()
}
