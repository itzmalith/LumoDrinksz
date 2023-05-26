//
//  myBag.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-26.
//

import SwiftUI

struct myBag: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count>0 {
                ForEach(cartManager.products,id: \.id){
                    product in
                    ProductRow(product :product)
                    
                }
                
                HStack{
                    Text("Bill Amount :")
                        .font(.custom(FontsManager.Aclonica.regular, size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "800000"))
                    Spacer()
                    Text("$\(cartManager.total)")
                        .bold()
                    
                }
                .padding()
                
            }else{
                Text("No drinks in bag")
                
            }
           
        }
        .navigationTitle(Text("My bag"))
        .padding(.top)
    }
}

struct myBag_Previews: PreviewProvider {
    static var previews: some View {
        myBag()
            .environmentObject(CartManager())
    }
}
