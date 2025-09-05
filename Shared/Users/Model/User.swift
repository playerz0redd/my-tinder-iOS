//
//  User.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import Foundation

struct User {
    let id: Int
    let name: String
    let age: Int
    let city: String
    let distance: Int?
    let pictures: [String]
    let tags: [Tags]?
    let status: Status
    let sex: Sex
    
    enum Tags {
        case onlineShopping
        case hiking
        case anime
        case cooking
        case gaming
        
        var value: String {
            switch self {
            case .onlineShopping:
                "Online Shopping"
            case .hiking:
                "Hiking"
            case .anime:
                "Anime"
            case .cooking:
                "Cooking"
            case .gaming:
                "Gaming"
            }
        }
    }
    
    enum Status {
        case verified
        case notVerified
    }
    
    enum Sex: CaseIterable {
        case man
        case woman
        
        var value: String {
            switch self {
            case .man:
                "man"
            case .woman:
                "woman"
            }
        }
    }
    
}
