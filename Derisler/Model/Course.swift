//
//  Course.swift
//  Derisler
//
//  Created by MaaS on 2023/03/01.
//

import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}

var courses = [
    Course(title: "SwiftUI يېڭى ئۆگەنگۈچىلەر ئۈچۈن", subtitle: "30دەرس - 5سائەت", text: "ئۆزىڭىزنىڭ تۇنجى ئالما ئەپىنى ياساڭ", image: "Illustration 5", logo: "Logo 5"),
    Course(title: "UI لايىھەلىگۈچىلەر ئۈچۈن", subtitle: "20دەرس - 6سائەت ", text: "يانفونلارنىڭ كۆرۈنمە يۈزىنى لايىھەلەڭ", image: "Illustration 1", logo: "designlogo"),
    Course(title: "يېڭى ئۆگەنگۈچىلەر ئۈچۈن 3D", subtitle: "10سائەت - 45دەرس ", text: "ئۆزىڭىز ياقتۇرغان مودىللارنى ياساڭ", image: "Illustration 9", logo: "3D model"),
    Course(title: "Photoshopتىن ئومۇمى چۈشەنچە", subtitle: "16سائەت - 51دەرس ", text: "يېڭياچىدىن ئۇستاتقىچە", image: "Illustration 3", logo: "PS Logo")
]
