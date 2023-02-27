//
//  HomeView.swift
//  Derisler
//
//  Created by MaaS on 2022/08/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
           FeaturedItem()
        }
        .overlay(
            NavigationVar()

        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
