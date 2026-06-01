//
//  CustomDivider.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        HStack(spacing: 10) {
            
            VStack {
                Divider()
                    .frame(width: 100, height: 1)
                    .overlay(.accent)
            }
            
            Image("Star")
            
            VStack {
                Divider()
                    .frame(width: 100, height: 1)
                    .overlay(.accent)
            }
        }
        
    }
}

#Preview {
    CustomDivider()
}
