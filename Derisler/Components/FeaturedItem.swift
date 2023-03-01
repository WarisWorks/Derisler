//
//  FeaturedItem.swift
//  Derisler
//
//  Created by MaaS on 2023/02/27.
//

import SwiftUI

struct FeaturedItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            Spacer()
            Image(course.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            Text(course.title)
                .font(.custom("UKIJ Tuz Tom", size: 26))
                .padding(.horizontal,20)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topTrailing, endPoint: .bottomLeading))

            Text(course.subtitle)
                .font(.custom("UKIJ Qolyazma Tuz", size: 18))
                .foregroundStyle(.secondary)
                .padding(.horizontal,20)
            Text(course.text)
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
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//            .cornerRadius(30)
//            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 20)
        
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
