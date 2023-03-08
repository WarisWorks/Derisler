//
//  ListRow.swift
//  Derisler
//
//  Created by Waris on 2023/03/08.
//

import SwiftUI

struct ListRow: View {
    var topic: Topic = topics[0]
    var body: some View {
        HStack(spacing: 16) {
            Spacer()
           
            Text(topic.title)
                .font(.custom(mainfont, size: 18))
            
            Image(systemName: topic.icon)
                .frame(width: 36,height: 36)
                .background(.ultraThinMaterial)
                .mask(Circle())
           
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}
