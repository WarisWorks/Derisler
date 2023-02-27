//
//  HomeView.swift
//  Derisler
//
//  Created by MaaS on 2022/08/24.
//

import SwiftUI

struct HomeView: View {
    @State var hasScrolled = false

    var body: some View {
        ScrollView {
            GeometryReader { proxy in
//                Text("\(proxy.frame(in: .named("scroll")).minY)")
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).maxY)
            }
            .frame(height: 0)
            
            FeaturedItem()
            
            Color.clear.frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
            withAnimation(.easeInOut) {
                if value < 0 {
                    hasScrolled = true
                } else {
                    hasScrolled = false
                }
            }
        })
        .safeAreaInset(edge: .top) {
            Color.clear.frame(height: 70)
        }
        .overlay(
            NavigationVar(title: "دەرىسلەر", hasScrolled: $hasScrolled)
                
        )
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
