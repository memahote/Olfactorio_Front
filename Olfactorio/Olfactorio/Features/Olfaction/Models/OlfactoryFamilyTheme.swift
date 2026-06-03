//
//  OlfactoryFamilyTheme.swift
//  Olfactorio
//
//  Created by Mounir Emahoten on 03/06/2026.
//

import Foundation
import SwiftUI

enum FamilyTheme: String, Codable {
    case floral
    case hesperide
    case woody
}

extension FamilyTheme {
    
    var accentColor: Color {
        switch self {
        case .floral:
            return .floral
            
        case .hesperide:
            return .hesperide
            
        case .woody:
            return .woody
            
        }
    }
    
    var shadowColor: Color{
        switch self {
        case .floral:
            return .floral.opacity(0.8)
            
        case .hesperide:
            return .hesperide.opacity(0.8)
            
        case .woody:
            return .woody.opacity(0.8)
            
        }
    }
}
