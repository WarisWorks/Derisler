//
//  Course.swift
//  Derisler
//
//  Created by Waris on 2023/03/01.
//

import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var background: String
    var logo: String
}

var featuredCourses = [
    Course(title: "SwiftUI يېڭى ئۆگەنگۈچىلەر ئۈچۈن", subtitle: "30دەرس - 5سائەت", text: "ئۆزىڭىزنىڭ تۇنجى ئالما ئەپىنى ياساڭ", image: "Illustration 5", background: "Background 5", logo: "Logo 5"),
    Course(title: "UI لايىھەلىگۈچىلەر ئۈچۈن", subtitle: "20دەرس - 6سائەت ", text: "يانفونلارنىڭ كۆرۈنمە يۈزىنى لايىھەلەڭ", image: "Illustration 1", background: "Background 4", logo: "designlogo"),
    Course(title: "يېڭى ئۆگەنگۈچىلەر ئۈچۈن 3D", subtitle: "10سائەت - 45دەرس ", text: "ئۆزىڭىز ياقتۇرغان مودىللارنى ياساڭ", image: "Illustration 9", background: "Background 1", logo: "3D model"),
    Course(title: "Photoshopتىن ئومۇمى چۈشەنچە", subtitle: "16سائەت - 51دەرس ", text: "يېڭياچىدىن ئۇستاتقىچە", image: "Illustration 3", background: "Background 5", logo: "PS Logo")
]


var courses = [
    Course(title: "تور بەت ياساش دەرىسى", subtitle: "30دەرس - 5سائەت", text: "ئۆزىڭىزنىڭ تور بېتىنى ياساڭ", image: "Illustration 4", background: "Background 6", logo: "Logo 5"),
    Course(title: "UI لايىھەلىگۈچىلەر ئۈچۈن", subtitle: "20دەرس - 6سائەت ", text: "يانفونلارنىڭ كۆرۈنمە يۈزىنى لايىھەلەڭ", image: "Illustration 1", background: "Background 10", logo: "designlogo"),
    Course(title: "يېڭى ئۆگەنگۈچىلەر ئۈچۈن 3D", subtitle: "10سائەت - 45دەرس ", text: "ئۆزىڭىز ياقتۇرغان مودىللارنى ياساڭ", image: "Illustration 9", background: "Background 1", logo: "3D model"),
    Course(title: "Photoshopتىن ئومۇمى چۈشەنچە", subtitle: "16سائەت - 51دەرس ", text: "يېڭياچىدىن ئۇستاتقىچە", image: "Illustration 3", background: "Background 5", logo: "PS Logo")
]

let mainfont = "NotoKufiArabic-Regular";
let tuztom = "UKIJ Tuz Tom";
let qolyazma = "UKIJ Qolyazma Tuz";
let alkatip = "ALKATIP Asliye";
