//
//  NavigationVar.swift
//  Derisler
//
//  Created by MaaS on 2023/02/27.
//

import SwiftUI

struct NavigationVar: View {
    var title = ""
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10)
            
            Text("ئىقتىدارلار")
                .font(.custom("UKIJ Tuz Tom", size: 33))
                .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 20)
        }
            .frame(height: 70)
            .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationVar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationVar()
    }
}
