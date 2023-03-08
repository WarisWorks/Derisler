//
//  SectionView.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct SectionView: View {
    var section: CourseSection = courseSections[0]
    @EnvironmentObject var model: Model
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                    .overlay(PlayView().overlay(CircularView(value: section.progress, lineWidth: 5).padding(24)))
                content
                    .offset(y: 120)
                    .padding(.bottom, 200)
            }
            .background(Color("Background"))
            .ignoresSafeArea()
            
            button
            
        }
    }
    var cover: some View{
        
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        // .padding(20)
        .foregroundColor(.black)
        .background(
            Image(section.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
                .frame(maxWidth: 500)
            
        )
        .background(
            Image(section.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
        )
        .mask (
            RoundedRectangle(cornerRadius: 0, style: .continuous)
            
        )
        .overlay(
            overlayContent
        )
        .frame(height: 500)
    }
    
    
    var content: some View{
        VStack(alignment: .trailing, spacing: 30){
            Text("ئالمىنىڭ كۆچمە سۇپىسىغا ئەپ ئېچىش")
                .font(.custom(mainfont, size: 18))
            Text("كۇرس ھەققىدە")
                .font(.custom(mainfont, size: 22))
            Text("SwiftUI سىزنىڭ Swift نىڭ كۈچى بىلەن بارلىق ئالما سۇپىلىرىدا ئېسىل كۆرۈنىدىغان ئەپلەرنى قۇرۇپ چىقىشىڭىزغا ياردەم بېرىدۇ. سىز پەقەت بىر يۈرۈش قورال ۋە API لارنى ئىشلىتىپ ، ھەر قانداق ئالما ئۈسكۈنىسىدە كۆپچىلىككە تېخىمۇ ياخشى تەجرىبە ئېلىپ كېلەلەيسىز.")
            Text("پروگراممىڭىزنىڭ يول باشلاش ھەرىكىتىنى پروگرامما خاراكتېرلىك كونترول قىلىپ ، ئۇنىڭ قوزغىلىش ھالىتىنى بەلگىلەڭ ، چوڭ-كىچىك سىنىپلار ئارا ئۆتكۈنچى باسقۇچنى باشقۇرۇڭ ، چوڭقۇر ئۇلىنىشلارغا جاۋاب قايتۇرۇڭ.كىچىك قوراللىرىڭىزنى SwiftUI ئارقىلىق قۇلۇپ ئېكرانىدا قالتىس كۆرسىتىڭ. چىرايلىق سىنبەلگە ، ئۆلچەش ئەسۋابى ۋە باشقا ئېلېمېنتلارنى تۈزۈپ ، ئابونتلىرىڭىزغا بىر قاراپلا تېز ئۇچۇر بېرىدۇ.")
                .font(.custom(mainfont, size: 16))
            Text("SwiftUI باياننامە گرامماتىكىسىنى ئىشلىتىدۇ ، شۇڭا ئىشلەتكۈچى كۆرۈنمە يۈزىنىڭ نېمە قىلىشى كېرەكلىكىنى ئاددىيلا بايان قىلالايسىز. مەسىلەن ، سىز تېكىست ساھەسىدىن تەركىب تاپقان تۈرلەرنىڭ تىزىملىكىنى خالايدىغانلىقىڭىزنى يازالايسىز ، ئاندىن ھەر بىر ساھەنىڭ توغرىلىنىشى ، خەت نۇسخىسى ۋە رەڭگىنى تەسۋىرلەڭ. كودىڭىز ئىلگىرىكىگە قارىغاندا ئاددىي ۋە ئوقۇش ئاسان بولۇپ ، ۋاقىت ۋە ئاسراشنى تېجەيدۇ.")
                .font(.custom(mainfont, size: 16))
        }
        .padding(20)
        .multilineTextAlignment(.trailing)
    }
    
    var button:some View{
        Button{
            dismiss()
//            withAnimation(.closeCard){
//                model.showDetail.toggle()
//
//            }
        } label: {
            Image(systemName: "xmark")
                .font(.body.weight(.bold))
                .foregroundColor(.secondary)
                .padding(8)
                .background(.ultraThinMaterial, in: Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .padding(20)
        .ignoresSafeArea()
    }
    
    var overlayContent: some View{
        VStack(alignment: .trailing, spacing: 12) {
            
            Text(section.title)
                .font(.custom(tuztom, size: 30))
                .frame(maxWidth: .infinity,alignment: .trailing)
            
            Text(section.subtitle)
                .font(.custom(tuztom, size: 16))
            
            
            Text(section.text)
                .font(.custom(tuztom, size: 16))
                .frame(maxWidth: .infinity,alignment: .trailing)
            
            Divider()
            
            HStack{
                Text("دەرس سۆزلىگۈچى : ئوغۇز")
                    .font(.custom(qolyazma, size: 14))
                
                AvatarView()
                ////                Image("Avatar Default")
                ////                    .resizable()
                ////                    .frame(width: 26, height: 26)
                ////                    .cornerRadius(10)
                ////                    .padding(8)
                ////                    .background(.ultraThinMaterial, in:  RoundedRectangle(cornerRadius: 18, style: .continuous))
                ////                    .strokeStyle(cornerRadius: 18)
                
            }
            
        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            
        )
        .offset(y: 250)
        .padding(20)
    }
    
    
    
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
