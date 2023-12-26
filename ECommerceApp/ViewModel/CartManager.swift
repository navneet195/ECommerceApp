//
//  CartManager.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 19/12/23.
//

import Foundation
import Combine


class CartManager: ObservableObject {

    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0

    func addToCard(product: Product) {
        products.append(product)
        total += product.price
    }

    func removeFromCard(product: Product) {
        products = products.filter {$0.id != product.id }
        total -= product.price
    }
}
