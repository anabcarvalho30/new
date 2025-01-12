//
//  BagViewModel.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 09/01/25.
//


import SwiftUI

@Observable
class BagViewModel {
    var bagListFix: [Bag] = [
        Bag(listOfItens: [], name: "First Bag fixes", color: .red, dateOfPurchase: .now)
    ]
    var bagListAll: [Bag] = [
        Bag(listOfItens: [], name: "First Bag not fix", color: .red, dateOfPurchase: .now)
    ]
    
    var isPresentingAddBag: Bool = false
}
