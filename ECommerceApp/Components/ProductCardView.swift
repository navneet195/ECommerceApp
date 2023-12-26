//
//  ProductCardView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 19/12/23.
//

import SwiftUI

struct ProductCardView: View {

    var product: Product
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        ZStack {
            Color("kSecondary")
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)

                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)

                    Text(product.supplier)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.vertical, 0.5)

                    Text("$ \(product.price)")
                        .foregroundColor(.black)
                        .bold()

                }

                Button {
                    cartManager.addToCard(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(12)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productList[0]) .environmentObject(CartManager())
    }
}
