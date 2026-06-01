//
//  AuthSwitch.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct AuthSwitch: View {
        let text: String
        let buttonLabel: String
        let action: () -> Void

        var body: some View {
            HStack(spacing: 4) {
                Text(text)
                    .foregroundStyle(.text)

                Button {
                    action()
                } label: {
                    Text(buttonLabel)
                        .foregroundStyle(.accent)
                }
            }
        }
    
}

#Preview {
    AuthSwitch(
            text: "Test text",
            buttonLabel: "label"
        ) {
            print("Tapped")
        }
}
