//
//  SplitBackground.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct SplitBackground: View {
    let imageName : String
    var bottomColor : Color
    var splitRatio : CGFloat
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width,
                            height: geo.size.height * splitRatio)
                    .clipped()
                bottomColor
                    .frame(height: geo.size.height * (1 - splitRatio))
                    }
                }
                .ignoresSafeArea()
        
    }
}

#Preview {
    SplitBackground(imageName: "AuthBackground", bottomColor: .black, splitRatio: 0.5)
}
