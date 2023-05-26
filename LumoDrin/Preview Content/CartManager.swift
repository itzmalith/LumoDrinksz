//
//  CartManager.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-26.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products:[Product] = []
    @Published private(set) var total :Int = 0
    
    func addToBag(product : Product){
        products.append(product)
        total += product.price
    }
    func removeFromBag(product:Product){
        products=products.filter{$0.id != product.id}
        total -= product.price
    }
    
}
