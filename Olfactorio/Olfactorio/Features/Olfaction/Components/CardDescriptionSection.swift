//
//  CardDescriptionSection.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

struct CardDescriptionSection: View {
    let familyName: String
    let adjectives: [String]
    let titleColor: Color
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(familyName)
                    .font(.custom("CormorantGaramond-Bold", size: 28))
                    .foregroundStyle(titleColor)
                
                ForEach(adjectives, id: \.self) {
                    Text($0)
                }
                .foregroundStyle(.text)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    CardDescriptionSection(familyName: "Florale", adjectives: ["Délicat","Raffiné", "Lumineux"], titleColor: .pink)
}
