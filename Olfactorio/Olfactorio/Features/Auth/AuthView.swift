//
//  AuthView.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct AuthView: View {
    @State private var authViewModel = AuthViewModel()
    @State private var showLoginView = true
    var body: some View {
        ZStack {
            
            SplitBackground(imageName: "AuthBackground", bottomColor: .background, splitRatio: 0.5)
            
            
            VStack(spacing: 20) {
                
                //Header

                    Text("Olfactorio")
                        .font(.custom("CormorantGaramond-Bold", size: 58))
                        .foregroundStyle(.text)
                        .shadow(color: .accent, radius: 2, x: 2, y: 0)
                        
                        
                    
                    
                HStack () {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(showLoginView ?  "Se Connecter" : "Créer votre compte" )
                            .font(.custom("CormorantGaramond-Bold", size: 36))
                            .foregroundStyle(.text)
                        
                        OutlineText(text: showLoginView ? "Explorer l’invisible, Ressentez l’essentiel" : "Rejoignez olfactorio et débuter votre voyage olfactif" , textColor: .text, outlineColor: .accent, fontSize: 20)
                    }
                        
                
                    Spacer()
                }
                .padding(.leading, 16)
                
                
                
                //FORM
                
                Group {
                    if showLoginView {
                        LoginView(authViewModel: authViewModel)
                    } else {
                        RegisterView(authViewModel: authViewModel)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .top)
                
                //FOOTER

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
        .ignoresSafeArea()
        
    }
}

#Preview {
    AuthView()
}
