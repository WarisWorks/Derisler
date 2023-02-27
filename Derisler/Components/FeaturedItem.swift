//
//  FeaturedItem.swift
//  Derisler
//
//  Created by MaaS on 2023/02/27.
//

import SwiftUI

struct FeaturedItem: View {
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            Text("ئەپ ئېچىش دەرسىلىكى")
                .font(.custom("UKIJ Tuz Tom", size: 30))
                .padding(.horizontal,20)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topTrailing, endPoint: .bottomLeading))

                Text("دەسلەپكى قەدەم 3سائەت ئومۇمى چۈشەنچە")
                .font(.custom("UKIJ Qolyazma Tuz", size: 18))
                .foregroundStyle(.secondary)
                .padding(.horizontal,20)
                Text("ئەپ ئاچقۇچىلار ئۈچۈن تۈزۈلگەن تۇنجى دەرسىلىك")
                .font(.custom("UKIJ Tuz Tom", size: 18))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(.secondary)
                .padding(.horizontal,20)
                
//                    .offset(y: 10)

        }
//            .multilineTextAlignment(.trailing)
        .multilineTextAlignment(.trailing)
        .padding(.vertical, 20)
        .frame(height: 350)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
//            .cornerRadius(30)
//            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .strokeStyle()
        .padding(.horizontal, 20)
        .background(
            Image("Blob 1")
                .offset(x: 250, y: -100)
        )
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode:  .fit)
                .frame(height: 250)
                .offset(x: -32, y: -80)
    )
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
