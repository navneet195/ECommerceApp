//
//  PageView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 11/01/24.
//

import SwiftUI

struct PageView: View {

    var image: String
    var title: String
    var header: String
    var detail: String
    var bgColor: String
    @AppStorage(AppStorageKey.currentPage) var currentPage = 1

    var body: some View {
        VStack(spacing: 30) {
            HStack {
                if currentPage == 1 {
                    Text(title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(ColorName.kPrimary))
                        .kerning(1.4)

                } else {
                    Button {
                        withAnimation(.easeInOut) {
                            currentPage -= 1
                        }

                    } label: {
                        Image(systemName: SystemIconName.chevronLeft)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color(ColorName.kPrimary))
                            .cornerRadius(10)

                    }
                }

                Spacer()

                Button {
                    currentPage = 4
                } label: {
                    Text(Constants.skip)
                        .fontWeight(.semibold)
                        .kerning(1.2)
                        .foregroundColor(Color(ColorName.kPrimary))
                }
            }
            .padding()

            Spacer(minLength: 0)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(header)
                .fontWeight(.bold)
                .foregroundColor(Color(ColorName.secondaryColor))
                .kerning(1.2)
                .padding(.horizontal, 15)

            Text(detail)
                .fontWeight(.light)
                .foregroundColor(Color(ColorName.secondaryColor))
                .padding(.horizontal, 15)

            Spacer(minLength: 90)
        }
        .background(Color(.clear).cornerRadius(16).ignoresSafeArea())
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(image: SystemImageName.image2, title: Constants.title, header: Constants.header1, detail: Constants.detail, bgColor: ColorName.color1)
    }
}
