//
//  Product.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-24.
//

import Foundation

struct Product: Identifiable {
    var id: UUID
    var name:String
    var image : String
    var price : Int
}

var productList = [Product(id:  UUID(), name: "Bushmills Black Bush", image: "drink1", price: 12900),
                   Product(id: UUID(), name: "Martell Cognac VS", image: "drink2", price: 27500),
                   Product(id: UUID(), name: "Beefeater Gin", image: "drink3", price: 13600),
                   Product(id: UUID(), name: "Jameson Irish Whiskey", image: "drink4", price: 9350),
                   Product(id: UUID(), name: "Tanqueray London Dry Gin", image: "drink5", price: 18600),
                   Product(id: UUID(), name: "4th Street Sweet Red", image: "drink6", price: 4900),
                   Product(id: UUID(), name: "Barefoot Pink Moscato", image: "drink7", price: 4200),
                   Product(id: UUID(), name: "McGuigan Black Label Cabernet Sauvignon", image: "drink8", price: 4750),
                   Product(id: UUID(), name: "Tocornal Cabernet Sauvignon", image: "drink9", price: 3850)]

