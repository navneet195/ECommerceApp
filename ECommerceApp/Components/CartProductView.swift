//
//  CartProductView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 22/12/23.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)

            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()

                Text("$ \(product.price)")
                    .bold()
            }
            .padding()

            Spacer()

            Image(systemName: "trash.fill")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCard(product: product)
                }
        }
        .padding(.horizontal)
        .background(Color(ColorName.kSecondary))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

struct CartProductView_Previews: PreviewProvider {
    static var previews: some View {
        CartProductView(product: productList[2])
            .environmentObject(CartManager())
    }
}
