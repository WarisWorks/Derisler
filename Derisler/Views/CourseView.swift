//
//  CourseView.swift
//  Derisler
//
//  Created by Waris on 2023/03/02.
//

import SwiftUI

struct CourseView: View {
    var namespace: Namespace.ID
    var course: Course = courses[0]
    @Binding var show: Bool
    @State var appear = [false, false, false]
    @EnvironmentObject var model: Model
    @State var viewState: CGSize = .zero
    @State var isDraggable = true
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                content
                    .offset(y: 120)
                    .padding(.bottom, 200)
                    .opacity(appear[2] ? 1 : 0)
            }
            .coordinateSpace(name: "scroll")
            .onAppear{
                model.showDetail = true
                
            }
            .onDisappear{
                model.showDetail = false
            }
            .background(Color("Background"))
            .mask(RoundedRectangle(cornerRadius: viewState.width / 3, style: .continuous))
            .shadow(color: .blue.opacity(0.3), radius: 30, x: 0,y: 10)
            .scaleEffect(viewState.width / -500 + 1)
            .background(.black.opacity(viewState.width / 500))
            .background(.ultraThinMaterial)
            .gesture(isDraggable ? drag : nil)
            .ignoresSafeArea()
            
            button
            
        }
        .onAppear{
            fadeIn()
            
        }
        .onChange(of:show) { newValue in
            fadeOut()
        }
    }
    
    
    
    var cover: some View{
        GeometryReader { proxy in
            let scrollY = proxy.frame(in: .named("scroll")).minY
            
            VStack{
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: scrollY > 0 ? 500 + scrollY : 500)
            // .padding(20)
            .foregroundColor(.black)
            .background(
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(maxWidth: 500)
                    .matchedGeometryEffect(id: "image\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? scrollY * -0.8 : 0)
            )
            .background(
                Image(course.background)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "background\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY : 0)
                    .scaleEffect(scrollY > 0 ? scrollY / 1000 + 1 : 1)
                    .blur(radius: scrollY / 10)
            )
            .mask (
                RoundedRectangle(cornerRadius: appear[0] ? 0 : 30, style: .continuous)
                    .matchedGeometryEffect(id: "mask\(course.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY : 0)
            )
            .overlay(
              overlayContent
                .offset(y: scrollY > 0 ? scrollY * -0.6 : 0)
        )
        }
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
            withAnimation(.closeCard){
                show.toggle()
                model.showDetail.toggle()
                
            }
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
            
            Text(course.title)
                .font(.custom(tuztom, size: 30))
                .matchedGeometryEffect(id: "title\(course.id)", in: namespace)
                .frame(maxWidth: .infinity,alignment: .trailing)
            
            Text(course.subtitle)
                .font(.custom(tuztom, size: 16))
                .matchedGeometryEffect(id: "subtitle\(course.id)", in: namespace)
            
            Text(course.text)
                .font(.custom(tuztom, size: 16))
                .matchedGeometryEffect(id: "text\(course.id)", in: namespace)
                .frame(maxWidth: .infinity,alignment: .trailing)
            
            Divider()
                .opacity(appear[0] ? 1 : 0)
            HStack{
                Text("دەرس سۆزلىگۈچى : ئوغۇز")
                    .font(.custom(qolyazma, size: 14))
                
                Image("Avatar Default")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .cornerRadius(10)
                    .padding(8)
                    .background(.ultraThinMaterial, in:  RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .strokeStyle(cornerRadius: 18)
                
            }
            .opacity(appear[1] ? 1 : 0)
            
        }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .matchedGeometryEffect(id: "blur\(course.id)", in: namespace)
                
            )
            .offset(y: 250)
            .padding(20)
    }
    
    var drag: some Gesture{
        DragGesture(minimumDistance: 30, coordinateSpace: .local)
            .onChanged{ value in
                
                guard value.translation.width > 0 else{return}
                if value.startLocation.x < 100 {
                    withAnimation(.closeCard) {
                        viewState = value.translation
                    }
                }
                if viewState.width > 120 {
                    close()
                }
            }
            .onEnded{ value in
                if viewState.width > 80 {
                   close()
                    
                } else {
                    withAnimation(.closeCard) {
                        viewState = .zero
                    }
                }
                
            }
    }
    
    func fadeIn(){
        withAnimation(.easeOut.delay(0.3)) {
            appear[0] = true
        }
        withAnimation(.easeOut.delay(0.4)){
            appear[1] = true
        }
        withAnimation(.easeOut.delay(0.5)){
            appear[2] = true
        }
    }
    
    func fadeOut(){
        appear[0] = false
        appear[1] = false
        appear[2] = false
    }
    func close(){
            withAnimation(.closeCard.delay(0.3)){
                show.toggle()
                model.showDetail.toggle()
            }
        
        withAnimation(.closeCard) {
            viewState = .zero
        }
        
        isDraggable = false
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        CourseView(namespace: namespace, show: .constant(true))
            .environmentObject(Model())
    }
}
