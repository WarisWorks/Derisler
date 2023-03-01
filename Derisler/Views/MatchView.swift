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
                    Text(" SwiftUI ھەققىدە")
                        .font(.custom(mainfont, size: 30))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                    Text("3سائەت 20 دەرس ")
                        .font(.custom(mainfont, size: 16))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("iOS 16 گە ئەپ قۇرۇش ۋە خاسلاشتۇرۇش")
                        .font(.custom(mainfont, size: 16))
                        .matchedGeometryEffect(id: "text", in: namespace)

                }
                .padding(20)
                .foregroundColor(.white)
                .background(
                    Color.red.matchedGeometryEffect(id: "background", in: namespace)
                )
                .padding(20)
            }else {
                VStack(alignment: .trailing, spacing: 12) {
                    Spacer()
                    Text(" SwiftUI ھەققىدە")
                        .font(.custom(mainfont, size: 30))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                    Text("3سائەت 20 دەرس ")
                        .font(.custom(mainfont, size: 16))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("iOS 16 گە ئەپ قۇرۇش ۋە خاسلاشتۇرۇش")
                        .font(.custom(mainfont, size: 16))
                        .matchedGeometryEffect(id: "text", in: namespace)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                    
                }
                .padding(20)
                .foregroundColor(.black)
                .background(
                    Color.blue.matchedGeometryEffect(id: "background", in: namespace)
                )

                
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
