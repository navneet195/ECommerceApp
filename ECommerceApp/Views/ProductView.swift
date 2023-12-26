//
//  ProductView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 26/12/23.
//

import SwiftUI

struct ProductView: View {
    @EnvironmentObject var cardManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]

    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
                .edgesIgnoringSafeArea([.top, .bottom])
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
            .environmentObject(CartManager())
    }
}
