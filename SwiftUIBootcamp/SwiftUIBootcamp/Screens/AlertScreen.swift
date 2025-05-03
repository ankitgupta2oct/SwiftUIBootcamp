//
//  AlertSCreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 02/05/25.
//

import SwiftUI

struct AlertScreen: View {
    @State private var showAlert: Bool = false
    @State private var alertData: AlertData?
    
    var body: some View {
        Button("Show Alert") {
            alertData = AlertData(title: "My Error", message: "My Message")
            showAlert.toggle()
        }
        .alert(alertData?.title ?? "Alert",
               isPresented: $showAlert,
               presenting: alertData) { alertData in
            
            Button(role: .destructive) {
                
            } label: {
                Text("Delete")
            }
            
            Button(role: .cancel) {
                
            } label: {
                Text("Retry")
            }
            
        } message: { alert in
            Text(alert.message)
        }
    }
}

struct AlertData {
    let title: String
    let message: String
}

#Preview {
    AlertScreen()
}
