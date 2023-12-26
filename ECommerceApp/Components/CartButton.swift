//
//  CartButton.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 21/12/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfButton: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)

            if numberOfButton > 0 {
                Text("\(numberOfButton)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfButton: 1)
    }
}
