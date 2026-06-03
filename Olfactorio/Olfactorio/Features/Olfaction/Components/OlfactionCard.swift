//
//  OlfactionCard.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

enum CardDirection {
    case imageLeading
    case imageTrailing
}

struct OlfactionCard: View {
    let familyName: String
    let adjectives: [String]
    let direction: CardDirection
    let theme: FamilyTheme
    
    var body: some View {
        HStack{
            if(direction == .imageLeading) {
                CardImageSection(imageName: "FloraleHeader")
                    .frame(width: 200)
                CardDescriptionSection(familyName: familyName, adjectives: adjectives, titleColor: theme.accentColor)
                    .frame(width: 170)
                    
            } else {
                CardDescriptionSection(familyName: familyName, adjectives: adjectives, titleColor: theme.accentColor)
                    .frame(width: 200)
                CardImageSection(imageName: "FloraleHeader")
                    .frame(width: 170)
                
            }
        }
        .background(.surface)
        .clipShape(
            RoundedRectangle(cornerRadius: 24)
        )
        .shadow(
            color: theme.shadowColor,
            radius: 4,
            x: 1,
            y: 2
        )
    }
}

#Preview {
    OlfactionCard(familyName: "Florale", adjectives: ["Délicat","Raffiné", "Lumineux"] , direction: .imageLeading, theme: .floral)
}
