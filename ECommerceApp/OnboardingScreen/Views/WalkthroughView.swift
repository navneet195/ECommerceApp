//
//  WalkthroughView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 11/01/24.
//

import SwiftUI

struct WalkthroughView: View {

    @AppStorage(AppStorageKey.currentPage) var currentPage = 1

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(ColorName.secondaryColor),
                    Color(ColorName.shadowColor),
                    Color(ColorName.kSecondary)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            if currentPage == 1 {
                PageView(
                    image: SystemImageName.image1,
                    title: Constants.title,
                    header: Constants.header1,
                    detail: Constants.detail,
                    bgColor: ColorName.color1)
                .transition(.scale)
            } else if currentPage == 2 {
                PageView(
                    image: SystemImageName.image2,
                    title: Constants.title,
                    header: Constants.header2,
                    detail: Constants.detail,
                    bgColor: ColorName.color2)
                .transition(.scale)

            } else if currentPage == 3 {
                PageView(
                    image: SystemImageName.image3,
                    title: Constants.title,
                    header: Constants.header3,
                    detail: Constants.detail,
                    bgColor: ColorName.color3)
                .transition(.scale)
            }
        }
        .overlay(alignment: .bottom, content: {
            Button {
                withAnimation(.easeInOut) {
                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
                }
            } label: {

                Image(systemName: SystemIconName.chevronRight)
                    .font(.system(size: 25).bold())
                    .foregroundColor(Color(ColorName.secondaryColor))
                    .frame(width: 60, height: 60)
                    .background(Color.clear)
                    .clipShape(Circle())
                    .overlay {
                        ZStack {
                            Circle()
                                .stroke(Color(ColorName.secondaryColor).opacity(0.4) , lineWidth: 4)

                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color(ColorName.secondaryColor), lineWidth: 4)
                                .rotationEffect(.init(degrees: -90))

                        }
                    }
            }
        })
    }
    
}

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughView()
    }
}
