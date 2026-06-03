//
//  AuthViewModel.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 01/06/2026.
//

import Foundation

@Observable
final class AuthViewModel {
    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    var password : String = ""
    var confirmPassword: String = ""
    
    var isLoading = false
    var errorMessage: String?
    
    
}
