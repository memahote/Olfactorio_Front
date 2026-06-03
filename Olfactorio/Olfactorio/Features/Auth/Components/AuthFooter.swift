//
//  AuthFooter.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 02/06/2026.
//

import SwiftUI

struct AuthFooter: View {
    @Binding var showLoginView: Bool
    var body: some View {
        VStack(spacing: 20){
            CustomDivider()
            
            Button {
                // showLoginView ? "action1" : "action2"
            } label: {
                SubmitButton(label: showLoginView ? "Se connecter" : "Crée un compte")
            }
            
            if(showLoginView){
                AuthSwitch(text: "Pas encore de compte ?", buttonLabel: "Crée un compte") {
                    showLoginView = false
                }
            } else {
                AuthSwitch(text: "Vous avez déjà un compte ?", buttonLabel: "Se connecter") {
                    showLoginView = true
                }
            }
            
        }
    }
}

#Preview {
    AuthFooter(showLoginView: .constant(true))
}
