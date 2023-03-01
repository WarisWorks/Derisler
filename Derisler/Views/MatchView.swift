//
//  MatchView.swift
//  Derisler
//
//  Created by Waris on 2023/03/01.
//

import SwiftUI

struct MatchView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack(alignment: .trailing, spacing: 12) {
                    Spacer()
                    VStack {
                        Text(" SwiftUI ھەققىدە")
                            .font(.custom(mainfont, size: 30))
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity,alignment: .trailing)
                        Text("3سائەت 20 دەرس ")
                            .font(.custom(mainfont, size: 16))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                            .frame(maxWidth: .infinity,alignment: .trailing)
                        
                        Text("ئايفونغا  SwiftUI تىلىدا ئەپ ئېچىش ")
                            .font(.custom(mainfont, size: 16))
                            .matchedGeometryEffect(id: "text", in: namespace)
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                }
                .foregroundColor(.white)
                .background(
                    Image("Illustration 9")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "image", in: namespace)
                )
                .background(
                    Image("Background 5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .mask (
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace)
                )
                .frame(height: 300)
                .padding(20)
            }else {
                ScrollView {
                    VStack{
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 500)
                    // .padding(20)
                    .foregroundColor(.black)
                    .background(
                        Image("Illustration 9")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    .background(
                        Image("Background 5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask (
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                    )
                    .overlay(
                        VStack(alignment: .trailing, spacing: 12) {
                            
                            Text(" SwiftUI ھەققىدە")
                                .font(.custom(mainfont, size: 30))
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(maxWidth: .infinity,alignment: .trailing)
                            
                            Text("3سائەت 20 دەرس ")
                                .font(.custom(mainfont, size: 16))
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            
                            Text("ئايفونغا  SwiftUI تىلىدا ئەپ ئېچىش ")
                                .font(.custom(mainfont, size: 16))
                                .matchedGeometryEffect(id: "text", in: namespace)
                                .frame(maxWidth: .infinity,alignment: .trailing)

                            Divider()
                            HStack{
                                Text("دەرس سۆزلىگۈچى : ئوغۇز")
                                    .font(.custom(mainfont, size: 14))
                                
                                Image("Avatar Default")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .cornerRadius(10)
                                    .padding(8)
                                    .background(.ultraThinMaterial, in:  RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    .strokeStyle(cornerRadius: 18)
                                
                            }
                            
                        }
                            .padding(20)
                            .background(
                                Rectangle()
                                    .fill(.ultraThinMaterial)
                                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .matchedGeometryEffect(id: "blur", in: namespace)
                                
                            )
                            .offset(y: 250)
                            .padding(20)
                    )
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
