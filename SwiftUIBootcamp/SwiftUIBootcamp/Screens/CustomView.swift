//
//  CustomView.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 03/04/25.
//

import SwiftUI

struct CustomView: View {
    let count: Int
    let fruit: Fruit
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            
            Text(fruit.rawValue)
                .bold()
                .font(.title)
        }
        .frame(width: 150, height: 150)
        .background(fruit == .apple ? .red : .orange)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

enum Fruit: String {
    case apple = "Apple"
    case orange = "Orange"
}

#Preview {
    HStack {
        CustomView(count: 2, fruit: .apple)
        CustomView(count: 5, fruit: .orange)
    }
}
