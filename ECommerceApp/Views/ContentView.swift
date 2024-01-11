//
//  ContentView.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 18/12/23.
//

import SwiftUI

struct ContentView: View {

    @AppStorage(AppStorageKey.currentPage) var currentPage = 1
    var body: some View {
        if currentPage > totalPages {
            TabbarView()
        } else {
            WalkthroughView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
