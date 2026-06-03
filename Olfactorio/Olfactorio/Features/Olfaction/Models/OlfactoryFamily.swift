//
//  OlfactoryFamily.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 03/06/2026.
//

import Foundation

struct OlfactoryFamily: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let imageUrl: String
    let theme: FamilyTheme
    let adjectives: [String]
}

struct MockOlfactoryFamilies {

    static let all: [OlfactoryFamily] = [

        OlfactoryFamily(
            id: UUID(),
            name: "Florale",
            description: "Symbole d'élégance et de délicatesse, la famille florale explore toutes les facettes des fleurs.",
            imageUrl: "HomeViewHeader",
            theme: .floral,
            adjectives: [
                "Délicat",
                "Raffiné",
                "Lumineux"
            ]
        ),

        OlfactoryFamily(
            id: UUID(),
            name: "Hespéridée",
            description: "Une famille fraîche et pétillante dominée par les agrumes.",
            imageUrl: "HomeViewHeader",
            theme: .hesperide,
            adjectives: [
                "Frais",
                "Pétillant",
                "Énergique"
            ]
        ),

        OlfactoryFamily(
            id: UUID(),
            name: "Boisée",
            description: "Des notes profondes inspirées des essences de bois nobles.",
            imageUrl: "HomeViewHeader",
            theme: .woody,
            adjectives: [
                "Profond",
                "Sec",
                "Élégant"
            ]
        ),

        OlfactoryFamily(
            id: UUID(),
            name: "Orientale",
            description: "Des accords chauds, ambrés et épicés au caractère affirmé.",
            imageUrl: "HomeViewHeader",
            theme: .floral,
            adjectives: [
                "Chaleureux",
                "Sensuel",
                "Mystérieux"
            ]
        ),

        OlfactoryFamily(
            id: UUID(),
            name: "Fougère",
            description: "Un équilibre entre fraîcheur aromatique et profondeur boisée.",
            imageUrl: "HomeViewHeader",
            theme: .hesperide,
            adjectives: [
                "Aromatique",
                "Vert",
                "Équilibré"
            ]
        ),

        OlfactoryFamily(
            id: UUID(),
            name: "Chyprée",
            description: "Une famille sophistiquée construite autour de la mousse de chêne.",
            imageUrl: "HomeViewHeader",
            theme: .woody,
            adjectives: [
                "Sophistiqué",
                "Élégant",
                "Intense"
            ]
        )
    ]
}
