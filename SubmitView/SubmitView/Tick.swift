//
//  Tick.swift
//  SubmitView
//
//  Created by Nerimene on 4/5/2021.
//

import SwiftUI

struct Tick: Shape {
    
    let scale: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let pointX = rect.midX + 4
        let pointY = rect.midY - 3
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.move(to: CGPoint(x: pointX - (42 * scale), y: pointY - (4 * scale)))
        path.addLine(to: CGPoint(x: pointX - (scale * 18), y: pointY + (scale * 28)))
        path.addLine(to: CGPoint(x: pointX + (scale * 40), y: pointY - (scale * 36)))
        return path
    }
}
struct Tick_Previews: PreviewProvider {
    static var previews: some View {
        Tick(scale: 1)
    }
}
