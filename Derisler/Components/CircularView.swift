//
//  CircularView.swift
//  Derisler
//
//  Created by MaaS on 2023/03/08.
//

import SwiftUI

struct CircularView: View {
    
    var value: CGFloat = 0.2
    var lineWidth: Double = 4
    @State var appear = false
    
    var body: some View {
        Circle()
            .trim(from: 0, to: appear ? value : 0)
            .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .fill(.angularGradient(colors: [.blue, .green, .blue], center: .center, startAngle: .degrees(0), endAngle: .degrees(360)))
            .rotationEffect(.degrees(270))
            .onAppear{
                withAnimation(.spring().delay(0.5)){
                    appear = true
                }
            }
            .onDisappear{
                appear = false
                    
            }
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
