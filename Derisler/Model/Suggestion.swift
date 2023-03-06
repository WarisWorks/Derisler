//
//  Suggestion.swift
//  Derisler
//
//  Created by Waris on 2023/03/02.
//

import SwiftUI

struct Suggestion: Identifiable{
    let id = UUID()
    var text: String
}

var suggetions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "3D"),
    Suggestion(text: "Design")
]
