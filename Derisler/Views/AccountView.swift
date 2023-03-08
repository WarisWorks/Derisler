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
    @State var address: Address = Address(id: 1, country: "ياپونىيە")
    @Environment(\.dismiss) var dismiss
    @AppStorage("isLogged") var isLogged = false
    @ObservedObject var coinModel = CoinModel()

    func fetchAddress() async {
        do {
            let url = URL(string: "https://random-data-api.com/api/v2/addresses")!
            let (data, _) = try await URLSession.shared.data(from: url)
           // print(String(decoding: data, as: UTF8.self))
            address = try JSONDecoder().decode(Address.self, from: data)
            
        } catch{
            address = Address(id: 1, country: "Error fetching")
        }
      
    }
    
    var body: some View {
        NavigationView{
            List{
     
                profile
                
                menu
                
                links
                
                coins
                
                Button {
                    isLogged = false
                    dismiss()
                } label: {
                    Text("چېكىنىپ چىقىش")
                }
                .font(.custom(tuztom, size: 16))
                .tint(.red)
            }
            .task {
                await fetchAddress()
                await coinModel.fetchCoins()
            }
            .refreshable {
                await fetchAddress()
                await coinModel.fetchCoins()
            }
            .listStyle(.insetGrouped)
            .navigationTitle("ئاكونت")
            .navigationBarItems(leading: Button { dismiss() } label: {
                Text("تامام").font(.custom(tuztom, size: 16))})
            
            
        }
        // SwiftUI to be RTL + Plus
        .environment(\.locale, Locale(identifier: "ug"))
        .environment(\.layoutDirection, .rightToLeft)
        .font(.custom(tuztom, size: 18))
        
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
                Text(address.country)
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
            NavigationLink(destination: HomeView()){
                Label("تەڭشەك", systemImage: "gear")
                
            }
            NavigationLink {
                Text("ئەزالىق")
                
            } label:  {
                Label("ئەزالىق", systemImage: "creditcard")
            }
            NavigationLink{ HomeView() } label: {
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
    
    var coins: some View{
        Section(header: Text("Coins")) {
            ForEach(coinModel.coins){ coin in
                HStack {
                    
                    AsyncImage(url: URL(string: coin.logo)){ image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            } placeholder : {
                                ProgressView()
                            }
                            .frame(width: 32,height: 32)
                    
                    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(coin.coin_name)
                        Text(coin.acronym)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
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
