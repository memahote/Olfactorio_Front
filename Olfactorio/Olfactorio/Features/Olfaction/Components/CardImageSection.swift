//
//  CardImageSection.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

struct CardImageSection: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipped()
    }
}

#Preview {
    CardImageSection(imageName: "FloraleHeader")
}
