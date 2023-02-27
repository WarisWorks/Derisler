//
//  ContentView.swift
//  Derisler
//
//  Created by Waris on 2022/08/12.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home

    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            switch selectedTab {
            case .home:
                HomeView()
            case .explore:
                AccountView()
            case .notifications:
                AccountView()
            case .library:
                AccountView()
            }
             TabBar()
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}



// UKIJ Qolyazma Tuz
// UKIJ Tuz Tom
