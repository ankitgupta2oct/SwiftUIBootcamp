//
//  AppStorageScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct AppStorageScreen: View {
    @AppStorage("name") var userName: String?
    
    var body: some View {
        VStack {
            Text(userName ?? "Update name")
            
            Button("Update") {
                userName = "Ankit"
            }
        }
    }
}

#Preview {
    AppStorageScreen()
}
