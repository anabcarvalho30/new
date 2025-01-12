//
//  Bag.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 07/01/25.
//

import SwiftUI

struct Bag: Hashable, Identifiable{
    var id: UUID = UUID()
    var listOfItens: [Item]
    var name: String
    var color: Color
    var dateOfPurchase: Date
}
