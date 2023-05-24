//
//  ProductPage.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-24.
//

import SwiftUI

struct ProductPage: View {
    
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 22)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns ,spacing: 20) {
                ForEach(productList, id: \.id){ product in
                    ProductCard(product: product)
                    
                }
                
            }
            .padding()
        }
    }
}

struct ProductPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductPage()
    }
}
