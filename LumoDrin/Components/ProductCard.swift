//
//  ProductCard.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-24.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager : CartManager
    var product:Product
    
    var body: some View {
        ZStack(alignment:.topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(product.name)
                        .font(.custom(FontsManager.Aclonica.regular, size:15))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "800000"))
                    Text("Rs.\(product.price)").font(.caption)
                    
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                
            
            }
            .frame(width: 180,height: 250)
            .shadow(radius: 3)
            
            Button{
                cartManager.addToBag(product: product)
                
            } label:{
            Image(systemName: "plus")
                    .font(.system(size: 45))
                    .foregroundColor(Color(hex: "#885A00"))
                    .offset(y:-10)
                    .padding(0.5)
        }
      }
        
        
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product:productList[0])
            .environmentObject(CartManager())
    }
}
