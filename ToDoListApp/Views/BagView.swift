//
//  BagView.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 07/01/25.
//

import SwiftUI

struct BagView: View {
    
    @State private var itemName: String = ""
       @Binding var bag: Bag
    
    var body: some View {
        List {
            HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(.purple)
                    .font(.system(size: 20, weight: .bold))
                    .padding(.leading, 10)
                
                Text("Título Exemplo")
                  .font(
                    Font.custom("Inter", size: 20)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.27))
                  
                
                Text("DD/MM")
                  .font(Font.custom("Inter", size: 16))
                  .foregroundColor(Color(red: 0.34, green: 0.35, blue: 0.36).opacity(0.87))
                  .frame(maxWidth: .infinity, alignment: .trailing)
                  .padding(.trailing)
            }.listRowSeparator(.hidden)
            
            HStack {
                TextField("Adicionar Item", text: $itemName)
                    .padding(.horizontal, 15)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .shadow(color: .secondary, radius: 3, x: 0, y:2)
                Button {
                    print("select")
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.purple)
                        .font(.system(size: 20, weight: .bold))
                        .padding(.trailing, 20)
                }
            }.listRowSeparator(.hidden)
        }.listStyle(.plain)
    }
    
}
#Preview {
    BagView(bag: .constant(
        Bag(
            listOfItens: [],
            name: "Minha Bag",
            color: .blue,
            dateOfPurchase: Date()
        )
    ))
}
