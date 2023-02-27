//
//  Tab.swift
//  Derisler
//
//  Created by MaaS on 2022/08/24.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "دەرسلەر", icon: "play.square.fill", tab: .home, color: .teal),
    TabItem(text: "ئىزدەن", icon: "graduationcap", tab: .explore, color: .blue),
    TabItem(text: "ئەسكەرتمە", icon: "bell", tab: .notifications, color: .green),
    TabItem(text: "خانەم", icon: "rectangle.stack", tab: .library, color: .yellow)
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
