//
//  HomePageView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 21/12/23.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color(.white)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    AppBar()
                        .environmentObject(cartManager)
                    SearchCardView()
                    ImageSliderView()

                    HStack {
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()

                        NavigationLink(
                            destination: {
                                ProductView()
                            }
                            ,label: { Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color(ColorName.kPrimary))
                            })
//                            .navigationTitle("All Furniture")

                    }
                    .padding()

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList, id: \.id) { product in
                                NavigationLink {
                                    ProductDetailView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .environmentObject(cartManager)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    Text("Pune, India")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink(destination: CartView()
                                    .environmentObject(cartManager)) {
                        CartButton(numberOfButton: cartManager.products.count)
                    }
                }

                Text("Find the most \nLuxurious")
                    .font(.headline)
                    .bold()
                + Text(" Furniture")
                    .font(.headline)
                    .bold()
                    .foregroundColor(Color(ColorName.kPrimary))
            }
        }
        .padding()
        .environmentObject(cartManager)
    }
}
