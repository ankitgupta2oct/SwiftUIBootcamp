//
//  ActionSheer.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/05/25.
//

import SwiftUI

struct ConfirmationDialogScreen: View {
    @State private var shareLogActions = false
    var body: some View {
        Button("Show Action Sheet") {
            shareLogActions.toggle()
        }
        .confirmationDialog("Share logs", isPresented: $shareLogActions) {
            Button("Cancel") {}
            Button("Share") {}
        }
    }
}

#Preview {
    ConfirmationDialogScreen()
}
