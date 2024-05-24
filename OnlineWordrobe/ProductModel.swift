//
//  ProductModel.swift
//  OnlineWordrobe
//
//  Created by Jigar on 25/05/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var image: String
}

let productData = [
    Product(name: "Essentials Men's Short-Sleeve Crewneck T-Shirt", price: 12.00, image: "fallout2"),
    Product(name: "Essentials Men's Short-Sleeve Crewneck T-Shirt", price: 18.00, image: "product2"),
    Product(name: "Essentials Men's Regular-Fit Long-Sleeve Oxford", price: 22.00, image: "product3"),
    Product(name: "Essentials Men's Short-Sleeve Crewneck T-Shirt", price: 32.00, image: "product4")
]
