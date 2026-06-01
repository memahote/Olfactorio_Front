//
//  OutlineText.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct OutlineText: View {
    let text: String
    let textColor: Color
    let outlineColor: Color
    let fontSize: CGFloat
    
    var body: some View {
        ZStack {
                   Text(text)
                       .font(.system(size: fontSize))
                       .foregroundColor(outlineColor)
                       .offset(x: -1.5, y: 0)

                   Text(text)
                        .font(.system(size: fontSize))
                        .foregroundColor(outlineColor)
                        .offset(x: 1.5, y: 0)

                   Text(text)
                        .font(.system(size: fontSize))
                        .foregroundColor(outlineColor)
                        .offset(x: 0, y: -1.5)

                   Text(text)
                        .font(.system(size: fontSize))
                        .foregroundColor(outlineColor)
                        .offset(x: 0, y: 1.5)


                   Text(text)
                        .font(.system(size: fontSize))
                        .foregroundColor(textColor)
                       .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
               }
           }
    
}

#Preview {
    OutlineText(text: "Test", textColor: .text, outlineColor: .accent, fontSize: 60)
}
