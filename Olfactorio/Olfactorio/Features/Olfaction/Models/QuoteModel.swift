//
//  QuoteModel.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import Foundation

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
}

enum MockQuotes {

    static let all: [Quote] = [

        Quote(
            text: "Le parfum est un poème qui se respire.",
            author: "Jean-Claude Ellena"
        ),

        Quote(
            text: "Une fragrance révèle ce que les mots ne peuvent exprimer.",
            author: "Olfactorio"
        ),

        Quote(
            text: "Le souvenir est souvent guidé par une odeur.",
            author: "Marcel Proust"
        ),

        Quote(
            text: "Le parfum est l'art qui rend la mémoire visible.",
            author: "Francis Kurkdjian"
        ),

        Quote(
            text: "Chaque note est une émotion en attente d'être ressentie.",
            author: "Olfactorio"
        ),

        Quote(
            text: "Une odeur traverse le temps plus vite qu'une image.",
            author: "Olfactorio"
        ),

        Quote(
            text: "Les parfums sont les sentiments des fleurs.",
            author: "Heinrich Heine"
        ),

        Quote(
            text: "La beauté d'un parfum réside dans son histoire.",
            author: "Olfactorio"
        ),

        Quote(
            text: "Le parfum est la forme la plus intense du souvenir.",
            author: "Jean-Paul Guerlain"
        ),

        Quote(
            text: "Respirer, c'est déjà voyager.",
            author: "Olfactorio"
        )
    ]
}
