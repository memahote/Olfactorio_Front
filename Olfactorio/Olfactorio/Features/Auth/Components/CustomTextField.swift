//
//  CustomTextField.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var fieldValue: String
    let iconName: String
    let label: String
    let isSecure: Bool
    
    var keyboardType: UIKeyboardType = .default
    var textInputAutocapitalization: TextInputAutocapitalization = .sentences
    
    var body: some View {
        
        HStack{
            
            Image(systemName: iconName)
                .font(.title)
                .foregroundStyle(.accent)
            
            if (isSecure) {
                SecureField("", text: $fieldValue, prompt: Text(label).foregroundStyle(.text))
                
                Button {
                    
                } label: {
                    Image(systemName: "eye")
                        .font(.headline)
                        .foregroundStyle(.accent)
                }

            } else {
                TextField("", text: $fieldValue, prompt: Text(label).foregroundStyle(.text))
            }
            
            
        }
        .foregroundStyle(.text)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10).fill(.surface)
                .stroke(.accent, lineWidth: 3)
        )
        .padding()
        .keyboardType(keyboardType)
        .textInputAutocapitalization(textInputAutocapitalization)
    }
}

#Preview {
    @Previewable @State var authViewModel = AuthViewModel()
    
    CustomTextField(fieldValue: $authViewModel.firstName, iconName: "person.fill", label: "Nom", isSecure: false)
}
