//
//  Topic.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct Topic: Identifiable{
    let id = UUID()
    var icon: String
    var title: String
    
}

var topics = [
    Topic(icon: "iphone", title: "كۆچمە سۇپا پروگراممىر" ),
    Topic(icon: "eyedropper", title: "UI لايىھەلىگۈچى"),
    Topic( icon: "laptopcomputer", title: "ئارقا سۇپا پروگراممىر")
]
