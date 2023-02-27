//
//  AccountView.swift
//  Derisler
//
//  Created by Waris on 2022/08/12.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView{
            List{
     
                profile
                
                menu
                
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("ئاكونت")
            
            
        }
        // SwiftUI to be RTL + Plus
        .environment(\.locale, Locale(identifier: "ug"))
        .environment(\.layoutDirection, .rightToLeft)
        .font(.custom("UKIJ Tuz Tom", size: 20))
        
    }
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                   HexagonView()
                        .offset(x: -0, y: -100)
                )
                .background(
                     BlobView()
                        .offset(x: 200, y: 0)
                        .scaleEffect(0.6)
                )
            Text("ۋارس رۇزى")
            HStack {
                Text("ياپونىيە")
                    .foregroundColor(.secondary)
                Image(systemName: "location")
                    .imageScale(.medium)
            }
        }
        
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    
    var menu: some View {
        Section{
            NavigationLink(destination: ContentView()){
                Label("تەڭشەك", systemImage: "gear")
                
            }
            NavigationLink {
                Text("ئەزالىق")
                
            } label:  {
                Label("ئەزالىق", systemImage: "creditcard")
            }
            NavigationLink{ ContentView() } label: {
                Label("ياردەم", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
        
    }
    
    var links: some View {
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://medium.com/@warisruzi")!) {
                    HStack {
                        Label("يازمىلىرىم", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button(action: { isDeleted = true }) {
                        Label("", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
                }
            }
            
            Link(destination: URL(string: "https://www.behance.net/warisruzi")!) {
                HStack {
                    Label("لايىھە ئەسەرلىرىم", systemImage: "photo.artframe")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions {
                pinButton
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton: some View{
        Button { isPinned.toggle() } label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
            Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
