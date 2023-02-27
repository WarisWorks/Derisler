//
//  NavigationVar.swift
//  Derisler
//
//  Created by MaaS on 2023/02/27.
//

import SwiftUI

struct NavigationVar: View {
    var title = ""
    @Binding var hasScrolled: Bool
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10)
                .opacity(hasScrolled ? 1 : 0)
            
            Text(title)
                .font(.custom("UKIJ Tuz Tom", size: 33))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                .padding(.top, 20)
                .offset(y: hasScrolled ? -4 : 0)

            
            HStack(spacing: 16) {
                Image("Avatar Default")
                    .resizable()
                    .frame(width: 26, height: 26)
                    .cornerRadius(10)
                    .padding(8)
                    .background(.ultraThinMaterial, in:  RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .strokeStyle(cornerRadius: 18)
                
                Image(systemName: "magnifyingglass")
                    .font(.body.weight(.bold))
                    .frame(width: 36,height: 36)
                    .foregroundColor(.secondary)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                .strokeStyle(cornerRadius: 14)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .padding(.top, 20)
            .offset(y: hasScrolled ? -4 : 0)
        }
        .frame(height: hasScrolled ? 44 : 70)
            .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationVar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationVar(title: "ئىقتىدارلىرى", hasScrolled: .constant(false))
    }
}
