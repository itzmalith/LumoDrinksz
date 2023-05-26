//
//  ProductPage.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-24.
//

import SwiftUI

struct ProductPage: View {
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 22)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns ,spacing: 20) {
                    ForEach(productList, id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                        
                    }
                    
                }
                .padding()
            }
            .navigationTitle(Text("Lumo Drinks"))
            .toolbar {
                NavigationLink {
                    myBag()
                        .environmentObject(cartManager)
                    
                } label: { CartButton(numberOfItems: cartManager.products.count)}
            }
            
           
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct ProductPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductPage()
    }
}
