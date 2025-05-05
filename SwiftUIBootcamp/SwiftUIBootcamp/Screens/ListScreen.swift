//
//  ListScreen.swift
//  SwiftUIBootcamp
//
//  Created by z0042k3y on 02/05/25.
//

import SwiftUI

struct ListScreen: View {
    @State var fruits = ["Apple", "Banana", "Orange", "Mango"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Get Count") {
                    print("Count \(fruits.count)")
                }
                
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: onDeleteItem)
                    .onMove(perform: onMoveItem)
                    .listRowBackground(Color.yellow.opacity(0.4))
                }
                .background(.red)
                .listStyle(.plain)
                
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button("Save") {
                                    
                                }
                                .tint(.green)
                                
                                Button("Delete") {
                                    
                                }
                                .tint(.red)
                                
                                Button("Archive") {
                                    
                                }
                                .tint(.orange)
                            }
                    }
                }
                .listStyle(.plain)
                .background(.green)
            }
            .navigationTitle("Fruits233")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        fruits.append("Papaya")
                    }
                }
            }
        }
    }
    
    func onDeleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func onMoveItem(fromOffsets oldIndexSet: IndexSet, toOffset newIndex: Int) {
        fruits.move(fromOffsets: oldIndexSet, toOffset: newIndex)
    }
}

#Preview {
    ListScreen()
}
