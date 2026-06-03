//
//  RegisterView.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct RegisterView: View {
    
    @Bindable var authViewModel : AuthViewModel
    var body: some View {
        VStack(spacing: -10) {
            CustomTextField(fieldValue: $authViewModel.lastName, iconName: "person", label: "Nom", isSecure: false)
            
            CustomTextField(fieldValue: $authViewModel.firstName, iconName: "person", label: "Prénom", isSecure: false)
            
            CustomTextField(fieldValue: $authViewModel.email, iconName: "envelope", label: "Email", isSecure: false)
            
            CustomTextField(fieldValue: $authViewModel.password, iconName: "lock", label: "Mot de passe", isSecure: true)
            
            CustomTextField(fieldValue: $authViewModel.confirmPassword, iconName: "lock", label: "Confirmer le mot de passe", isSecure: true)
        }
    }
}

#Preview {
    @Previewable @State var authViewModel = AuthViewModel()
    RegisterView(authViewModel: authViewModel)
}
