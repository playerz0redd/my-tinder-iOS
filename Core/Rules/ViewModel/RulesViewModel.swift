//
//  RulesViewModel.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 2.09.25.
//

import Foundation

final class RulesViewModel {
    
    // MARK: - Properties
    let rules: [String: String] = [caption1 : rule1, caption2 : rule2, caption3 : rule3, caption4 : rule4]
    
    static let caption1: String = "Be yourself"
    
    static let caption2: String = "Stay safe"
    
    static let caption3: String = "Play it cool"
    
    static let caption4: String = "Be proactive"
    
    static let rule1: String = "Make sure your photos, age and bio are true to who you are."
    
    static let rule2: String = "Don't be too quick to give out personal information."
    
    static let rule3: String = "Respect others and treat them as you would like to be treated."
    
    static let rule4: String = "Always report bad behaviour."
}
