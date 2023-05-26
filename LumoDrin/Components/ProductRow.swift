//
//  ProductRow.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-26.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 40) {
            
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .font(.custom(FontsManager.Aclonica.regular, size: 15))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: "800000"))
                
                Text("Rs. \(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash.fill")
                .foregroundColor(Color(hue: 0.021, saturation: 0.888, brightness: 0.858))
                .onTapGesture {
                    cartManager.removeFromBag(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(hex: "#F0F0F0"))
        .shadow(color: Color.gray.opacity(0.5), radius: 7, x: 4, y: 7)
        .cornerRadius(15)
        .padding(.horizontal)
    }
    
}
struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product : productList[3])
            .environmentObject(CartManager())
    }
}
