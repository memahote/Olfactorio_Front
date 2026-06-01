//
//  SubmitButton.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct SubmitButton: View {
    let label: String
    
    var body: some View {
        
        Text(label)
            .padding()
            .padding(.horizontal)
            .foregroundStyle(.text)
            .background(
                RoundedRectangle(cornerRadius: 16).fill(.buttonSurface)
                    .stroke(.accent, lineWidth: 2)
            )
            
        
    }
}

#Preview {
    SubmitButton(label: "Test")
}
