//
//  CourseSection.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct CourseSection: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var background: String
    var logo: String
    var progress: CGFloat
}

var courseSections = [
    CourseSection(title: "SwiftUI يېڭى ئۆگەنگۈچىلەر ئۈچۈن", subtitle: "30دەرس - 5سائەت", text: "ئۆزىڭىزنىڭ تۇنجى ئالما ئەپىنى ياساڭ", image: "Illustration 5", background: "Background 5", logo: "Logo 5", progress: 0.1),
    CourseSection(title: "UI لايىھەلىگۈچىلەر ئۈچۈن", subtitle: "20دەرس - 6سائەت ", text: "يانفونلارنىڭ كۆرۈنمە يۈزىنى لايىھەلەڭ", image: "Illustration 1", background: "Background 4", logo: "designlogo", progress: 0.5),
    CourseSection(title: "يېڭى ئۆگەنگۈچىلەر ئۈچۈن 3D", subtitle: "10سائەت - 45دەرس ", text: "ئۆزىڭىز ياقتۇرغان مودىللارنى ياساڭ", image: "Illustration 9", background: "Background 1", logo: "3D model", progress: 0.4),
    CourseSection(title: "Photoshopتىن ئومۇمى چۈشەنچە", subtitle: "16سائەت - 51دەرس ", text: "يېڭياچىدىن ئۇستاتقىچە", image: "Illustration 3", background: "Background 5", logo: "PS Logo", progress: 0.3)
]
