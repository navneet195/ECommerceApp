//
//  CartView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 22/12/23.
//

import SwiftUI

struct CartView: View {

    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                        .environmentObject(cartManager)
                }

                HStack {
                    Text("Your total is: ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding(.horizontal)

                PaymentButton(action: {})
                    .padding()

            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
