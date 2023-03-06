//
//  SearchView.swift
//  Derisler
//
//  Created by Waris on 2023/03/02.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var show = false
    @Namespace var namespace
    @State var selectedIndex = 0
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    content
                }
                .padding(20)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30,style:  .continuous))
                .strokeStyle(cornerRadius: 30)
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.regularMaterial)
                        .frame(height: 200)
                        .frame(maxHeight: .infinity, alignment: .top)
                        .blur(radius: 20)
                        .offset(y: -200)
                    
                )
                .background(
                    Image("Blob 1").offset(x: -100, y: -200)
                )
                
            }
            .searchable(text: $text, placement:
                    .navigationBarDrawer(displayMode: .always), prompt:
                            Text("SwiftUI, UI/UX, React, لايىھە")){
                ForEach(suggetions){ suggesstion in
                    Button{
                        text = suggesstion.text
                    } label: {
                        Text(suggesstion.text)
                            .searchCompletion(suggesstion.text)
                    }
                }
            }
                            .navigationTitle("ئىزدەش").font(.custom(qolyazma, size: 18))
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss() } label: {
                                Text("تامام").font(.custom(tuztom, size: 16))
                            })
                            .sheet(isPresented: $show) {
                                CourseView(namespace: namespace, course: courses[selectedIndex], show: $show)
                                
                            }
        }
        //.multilineTextAlignment(.trailing)
    }
    var content: some View{
        ForEach(Array(courses.enumerated()), id: \.offset) { index, item in
            if item.title.contains(text) || text == "" {
                if index != 0 { Divider() }
                Button {
                    show = true
                    selectedIndex = index
                } label : {
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .trailing, spacing: 5) {
                            Text(item.title).bold()
                                .foregroundColor(.primary)
                            Text(item.text)
                                .font(.custom(qolyazma, size: 18))
                                .foregroundColor(.secondary)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .multilineTextAlignment(.trailing)
                        }
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 44,height: 44)
                            .background(Color("Background"))
                            .mask(Circle())
                    }
                    .padding(5)
                    .listRowSeparator(.hidden)
            }
            }
         
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
