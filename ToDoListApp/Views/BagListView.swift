//
//  ContentView.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 18/12/25
//

// Estou pensando sobre como organizar melhor as compras fixas e listas de compras, será que é realmente preciso ter um bagcard como modelo de card quando os itens da lista já serao os cards em si, eu consigo dentro do swift ui fazer essas mudanças de estilizaçao de cada card sem deixar o código desorganizado ou abarrotado? será nesse mesmo arquivo .swift ou outro?
import SwiftUI
import SwiftData

struct BagListView: View {
    
    @State private var bags: [Bag] = [] 
    @State private var isPresentingAddBag: Bool = false
    @State var viewModel: BagViewModel = BagViewModel()
    
    var body: some View {
        
        NavigationView {
            List{
                ZStack {
                    Image("ReStock")
                        .frame(maxWidth: .infinity)
                   
                    NavigationLink(destination: ConfigView()) {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.purple)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .font(.system(size: 20, weight: .bold))
                    }.buttonStyle(PlainButtonStyle())
                    .buttonStyle(BorderlessButtonStyle())
                }

                HStack {
                    Text("NOVA COMPRA")
                        .padding(.leading)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(Color.secondary)
                    Spacer()
                    Button {
                        isPresentingAddBag = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.purple)
                            .font(.system(size: 20, weight: .bold))
                    }
                    .padding(.trailing)
                }.listRowSeparator(.hidden)
                    .padding([.leading, .trailing], 5)
                    .frame(height: 10)
                
                // Seção de "Compras Fixas"
                if !viewModel.bagListFix.isEmpty {
                    Text("Compras Fixas")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Color.secondary)
                        .padding(.leading, 20)
                        .listRowSeparator(Visibility.hidden)
                        
                        ForEach(viewModel.bagListFix) { bag in
                            BagCard(oneBag: bag)
                                .swipeActions(edge: .trailing, allowsFullSwipe: true){
                                    Button(action:{
                                        print("Test")
                                    }){
                                        Label("", systemImage: "trash")
                                    }.tint(.red)
                                    
                                }
                        }.listRowSeparator(Visibility.hidden)
                        .frame(height: 37)
                }
                
                //          Seção de "Listas de Compras"
                if !viewModel.bagListAll.isEmpty {
                    Text("Listas de Compras")
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Color.secondary)
                        .padding(.leading, 20)
                        .padding(.top, 5)
                        .listRowSeparator(Visibility.hidden)
                        ForEach(viewModel.bagListAll) { bag in
                            BagCard(oneBag: bag)
                                .swipeActions(edge: .trailing, allowsFullSwipe: true){
                                    Button(action:{
                                        print("Test")
                                    }){
                                        Label("delete", systemImage: "trash")
                                    }.tint(.red)
                                    Button(action:{
                                        print("Test")
                                    }){
                                        Label("", systemImage: "pin")
                                    }.tint(.blue)
                                }
                        } .listRowSeparator(Visibility.hidden)
                        .frame(height: 37)
                }
                
                Spacer()
            }.listStyle(.plain)
                .listRowSeparator(Visibility.hidden)
                .sheet(isPresented: $isPresentingAddBag) {
                    AddBagSheet(bags: $bags)
                }
        }
    }
}

#Preview {
    BagListView()
}
