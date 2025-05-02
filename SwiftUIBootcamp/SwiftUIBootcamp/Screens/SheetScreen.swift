//
//  SheetScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 01/05/25.
//

import SwiftUI

struct SheetScreen: View {
    @State var sheetItem: SheetModel? = nil
    @State var fullCoverItem: SheetModel? = nil
    
    var body: some View {
        VStack(spacing: 50) {
            Button("Show Sheet") {
                sheetItem = SheetModel(message: "Hello Sheet", sheetType: .info)
            }
            
            Button("Show FullCover") {
                fullCoverItem = SheetModel(message: "Hello Full Cover", sheetType: .info)
            }
            .sheet(item: $sheetItem) { item in
                SheetView(message: item.message, backgroundColor: .red)
            }
            .fullScreenCover(item: $fullCoverItem) { item in
                SheetView(message: item.message, backgroundColor: .green)
            }
        }
    }
}

struct SheetModel: Identifiable {
    var id = UUID()
    
    let message: String
    let sheetType: SheetType
}

enum SheetType: String {
    case alert, info, warning
}

struct SheetView: View {
    let message: String
    let backgroundColor: Color
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack() {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                }
                
                Text(message)
            }
        }
    }
}

#Preview {
    SheetScreen()
}
