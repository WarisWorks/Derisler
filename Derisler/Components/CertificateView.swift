//
//  CertificateView.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct CertificateView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            VStack(alignment: .trailing, spacing: 8) {
                Text("SwiftUI يۈرۈشلۈك دەرىسلىكى")
                    .font(.custom(tuztom, size: 20))
                Text("گۇۋاھنامە")
                    .font(.custom(tuztom, size: 25))
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 8) {
                Text("2023-يىلى 3-ئاينىڭ 24-كۈنى")
                    .font(.custom(qolyazma, size: 18))
                Text("بۇ گۇۋاھنامىنى دەرسلەر كۇرسىدىن تارقىتىلدى")
                    .font(.custom(mainfont, size: 12))
            }
            .foregroundColor(.secondary)
            
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .overlay(
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        )
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView()
    }
}
