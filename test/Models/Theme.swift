//
//  Theme.swift
//  test
//
//  Created by Kiran Gutta on 04/01/24.
//

import SwiftUI

enum Theme : String {
    case yellow
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case bubblegum
    case buttercup
    case periwinkle
    case oxblood
    
    
    var accentColor : Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
            
        }
    }
    var mainColor : Color {
        Color(rawValue)
    }
    var name: String {
            rawValue.capitalized
        }
}
