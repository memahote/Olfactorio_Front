//
//  OlfactiveFamilyView.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

struct OlfactiveFamilyView: View {
    var body: some View {
        VStack(spacing: 20){
            HomeHeader(imageName: "HomeViewHeader", quotes: MockQuotes.all)
            
            ScrollView (showsIndicators: false){
                VStack(spacing: 25) {
                    ForEach(MockOlfactoryFamilies.all) { family in
                        Button {
                            
                        } label: {
                            OlfactionCard(
                                familyName: family.name,
                                adjectives: family.adjectives,
                                direction: .imageLeading,
                                theme: family.theme)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            
        }
        .ignoresSafeArea()
        .background(
            Color.background
        )
        
    }
}

#Preview {
    OlfactiveFamilyView()
}
