//
//  ItemCard.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 11/01/25.
//
import Foundation
import SwiftUI

struct ItemCard: View{
    
    
    var isChecked: Bool
    
    var body: some View{
        HStack {
            VStack(alignment: .leading) {
                Text("Titulo")
                Text("Data")
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Button{
                print("test")
            } label: {
                Image(systemName: isChecked ? "checkmark.square.fill" : "square")
            }
        }
    }
}
#Preview {
    ItemCard(isChecked: true)
}
