//
//  SectionRow.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct SectionRow: View {
    var section: CourseSection = courseSections[0]
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
          
            
            VStack(alignment: .trailing, spacing: 8) {
                Text(section.subtitle)
                    .font(.custom(qolyazma, size: 16))
                    .foregroundColor(.secondary)
                Text(section.title)
                    .font(.custom(tuztom, size: 16))
                Text(section.text)
                    .font(.custom(tuztom, size: 16))
                    .foregroundColor(.secondary)
                ProgressView(value: section.progress)
                    .accentColor(.white)
                    .frame(maxWidth: 132)
            }
            
            Image(section.logo)
                .resizable()
                .frame(width: 44, height: 44)
                .mask(Circle())
                .padding(12)
                .background(Color(UIColor.systemBackground).opacity(0.3))
                .mask(Circle())
                .overlay(CircularView(value: section.progress))
        }
        .padding(20)
    }
}

struct SectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SectionRow()
    }
}
