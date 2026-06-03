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
            
            
            VStack {
                
                AuthHeader(showLoginView: showLoginView)
                
                if showLoginView {
                    LoginView(authViewModel: authViewModel)
                } else {
                    RegisterView(authViewModel: authViewModel)
                }
                
                AuthFooter(showLoginView: $showLoginView)
                
            }
        }
        
        
    }
}

#Preview {
    AuthView()
}
