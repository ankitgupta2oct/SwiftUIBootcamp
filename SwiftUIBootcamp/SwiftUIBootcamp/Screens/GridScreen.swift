//
//  GridScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 05/05/25.
//

import SwiftUI

struct GridScreen: View {
    var body: some View {
        Grid {
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(3)
            }
            
            GridRow {
                Color.red.opacity(0.7)
                Color.green.opacity(0.7)
                    .gridCellColumns(2)
            }
            
            GridRow {
                Color.blue.opacity(0.7)
                Color.yellow.opacity(0.7)
                Color.gray.opacity(0.7)
            }
            
            GridRow {
                Color.purple.opacity(0.7)
                    .gridCellColumns(2)
                Color.brown.opacity(0.7)
            }
        }
    }
}

#Preview {
    GridScreen()
}
