//
//  ProductCard.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-24.
//

import SwiftUI

struct ProductCard: View {
    var product:Product
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product:productList[0])
    }
}