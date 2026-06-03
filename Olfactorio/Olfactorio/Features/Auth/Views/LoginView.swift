//
//  LoginView.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct LoginView: View {
    @Bindable var authViewModel : AuthViewModel
    var body: some View {
    
        Spacer()
        VStack(spacing: -10) {
            CustomTextField(fieldValue: $authViewModel.email, iconName: "envelope", label: "Email", isSecure: false)
            
            CustomTextField(fieldValue: $authViewModel.password, iconName: "lock", label: "Mot de passe", isSecure: true)
        }
        
        Spacer()
    }
}

#Preview {
    @Previewable @State var authViewModel = AuthViewModel()
    LoginView(authViewModel: authViewModel)
}
