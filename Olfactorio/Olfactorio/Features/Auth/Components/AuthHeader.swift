//
//  AuthHeader.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

struct AuthHeader: View {
    let showLoginView : Bool
    var body: some View {
        VStack(spacing: 20){
            
            Text("Olfactorio")
                .font(.custom("CormorantGaramond-Bold", size: 58))
                .foregroundStyle(.text)
                .shadow(color: .accent, radius: 2, x: 2, y: 0)
            
            HStack () {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(showLoginView ?  "Se Connecter" : "Créer votre compte" )
                        .font(.custom("CormorantGaramond-Bold", size: 36))
                        .foregroundStyle(.text)
                    
                    OutlineText(text: showLoginView ? "Explorer l’invisible, Ressentez l’essentiel" : "Rejoignez olfactorio et débuter votre voyage olfactif" , textColor: .text, outlineColor: .accent, fontSize: 20)
                }
                
                
                Spacer()
            }
            .padding(.leading, 16)
        }
    }
}

#Preview {
    AuthHeader(showLoginView: true)
}
