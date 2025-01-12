//
//  ConfigView.swift
//  ToDoListApp
//
//  Created by iredefbmac_31 on 09/01/25.
//

import SwiftUI

struct ConfigView: View{
    
    @State private var isDarkMode: Bool = false
    
    var body: some View {
        List{
            
            //            ZStack {
            //                HStack(spacing: 4){
            //                    Button(action: {
            //                        print("Botão clicado!")
            //                    }) {
            //                        Image(systemName: "chevron.left")
            //                            .foregroundColor(.blue)
            //                            .font(.system(size: 20, weight: .bold))
            //                    }
            //
            //                    Text("Ajustes")
            //                        .font(Font.custom("Inter", size: 16))
            //                        .foregroundColor(Color(red: 0.07, green: 0.48, blue: 0.88))
            //                }.frame(maxWidth: .infinity, alignment: .leading)
            //                Text("Tela")
            //                    .font(Font.custom("Inter", size: 18))
            //                    .foregroundColor(.black)
            //                    .frame(maxWidth: .infinity)
            //            }
            
            Text("APARÊNCIA")
                .font(Font.custom("Inter", size: 13))
                .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.27))
                .padding(.leading)
            
            HStack{
                Text("MODO ESCURO")
                    .font(Font.custom("Inter", size: 13))
                    .foregroundColor(Color(red: 0.26, green: 0.26, blue: 0.27))
                    .padding(.leading)
                
                Toggle("", isOn: $isDarkMode)
                    .padding()
                    .toggleStyle(SwitchToggleStyle(tint: .green))
            }
            
        } .listStyle(.plain)
        .navigationTitle("Tela")
    }
}

#Preview {
    ConfigView()
}
