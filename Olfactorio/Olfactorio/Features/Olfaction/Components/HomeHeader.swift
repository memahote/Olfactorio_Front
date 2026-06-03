//
//  HomeHeader.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI
import Combine

struct HomeHeader: View {

    let imageName: String
    let quotes: [Quote]

    @State private var currentQuote: Quote?

    private let timer = Timer.publish(
        every: 10,
        on: .main,
        in: .common
    ).autoconnect()

    var body: some View {

        ZStack {

            Image(imageName)
                .resizable()
                .scaledToFill()

            VStack(spacing: 10) {

                Text("Olfactorio")
                    .font(.custom("CormorantGaramond-Bold", size: 52))
                    .foregroundStyle(.text)
                    .shadow(color: .accent, radius: 2, x: 2, y: 0)

                CustomDivider()

                if let currentQuote {

                    Text("“\(currentQuote.text)”")
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.text)
                        .italic()

                    Text(currentQuote.author)
                        .foregroundStyle(.accent)
                }
            }
        }
        .frame(height: 265)
        .clipped()
        .ignoresSafeArea(edges: .top)
        .onAppear {
            displayRandomQuote()
        }
        .onReceive(timer) { _ in
            withAnimation(.easeInOut(duration: 0.5)) {
                displayRandomQuote()
            }
        }
    }

    private func displayRandomQuote() {

        guard !quotes.isEmpty else { return }

        let availableQuotes = quotes.filter {
            $0.id != currentQuote?.id
        }

        currentQuote =
            availableQuotes.randomElement()
            ?? quotes.randomElement()
    }
}

#Preview {
    HomeHeader(imageName: "HomeViewHeader", quotes: MockQuotes.all)
}
