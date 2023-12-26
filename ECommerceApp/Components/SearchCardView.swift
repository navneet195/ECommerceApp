//
//  SearchCardView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 19/12/23.
//

import SwiftUI

struct SearchCardView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search a product", text: $search)
                    .padding()

            }
            .background(Color("kSecondary"))
            .cornerRadius(12)

            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("kPrimary"))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

struct SearchCardView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCardView()
    }
}
