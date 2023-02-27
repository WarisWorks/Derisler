//
//  PreferenceKeys.swift
//  Derisler
//
//  Created by MaaS on 2023/02/27.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
