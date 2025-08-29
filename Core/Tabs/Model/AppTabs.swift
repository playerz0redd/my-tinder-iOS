//
//  TabIcons.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import Foundation

enum AppTabs: Int, CaseIterable {
    case cardsTab
    case star
    case search
    case chats
    case profile
    
    var iconName: String {
        switch self {
        case .cardsTab:
            "flame.fill"
        case .star:
            "star.fill"
        case .search:
            "sparkle.magnifyingglass"
        case .chats:
            "message.badge.filled.fill"
        case .profile:
            "person.fill"
        }
    }
}
