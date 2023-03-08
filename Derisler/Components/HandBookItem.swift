//
//  HandBookItem.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct HandBookItem: View {
    var handbook: HandBook = handbooks[0]
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 8) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.black.opacity(0.2))
                .blendMode(.overlay)
                .frame(height: 90)
                .overlay(
                    Image(handbook.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 100)
                )
           Text(handbook.title)
                .font(.custom(mainfont, size: 14))
                .padding(.top, 8)
                .layoutPriority(1)
            
            Text(handbook.subtitle)
                .font(.custom(mainfont, size: 12))
                .foregroundColor(.secondary)
            Text(handbook.text)
                .font(.custom(mainfont, size: 14))
                .foregroundColor(.secondary)
                .lineLimit(3)
            Spacer()
        }
        .padding()
        .frame(maxWidth: 200)
        .frame(height: 260)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(colors: [handbook.color1, handbook.color2], startPoint: .top, endPoint: .bottomTrailing))
                .rotation3DEffect(.degrees(10), axis: (x: 0, y:1,z: 0), anchor: .bottomTrailing)
                .rotationEffect(.degrees(180))
                .padding(.trailing,40)
        )
        .shadow(color: .clear, radius: 0, x: 0, y: 0)
    }
}

struct HandBookItem_Previews: PreviewProvider {
    static var previews: some View {
        HandBookItem(handbook: handbooks[1])
    }
}
