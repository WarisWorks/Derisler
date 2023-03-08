//
//  HandBook.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct HandBook: Identifiable {
    let id = UUID()
    var title : String
    var subtitle: String
    var text: String
    var logo: String
    var image: String
    var color1: Color
    var color2: Color
}

var handbooks = [
    HandBook(title: "تىلى ھەققىدە SwiftUI", subtitle:"20 سائەت 100 دەرس" , text: "0 دىن باشلاپ 1گىچە", logo: "Logo 1", image: "Illustration 1", color1:.teal , color2: .blue),
    HandBook(title: "مودىل ياساش 3D", subtitle: "25سائەت 120دەرس ", text: "تامچىلىقتىن بىنا مودىلى ياساشقىچە", logo: "Logo 2", image: "Illustration 2", color1: .green , color2: .orange)
]
