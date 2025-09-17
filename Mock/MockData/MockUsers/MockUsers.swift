//
//  MockUsers.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import Foundation

struct MockUsers {
    
    static var jason: User {
        User(
            id: Int.random(in: 0...1000),
            name: "Jason",
            age: 37,
            city: "New York",
            distance: 2,
            pictures: ["statham-1", "statham-2"],
            tags: [.anime, .cooking, .hiking, .gaming, .onlineShopping],
            status: .verified,
            gender: .man
        )
    }
    
    static var cruz: User {
        User(
            id: Int.random(in: 0...1000),
            name: "Tom",
            age: 44,
            city: "Amsterdam",
            distance: 13,
            pictures: ["cruz-1", "cruz-2", "cruz-3"],
            tags: [.anime, .cooking, .hiking, .gaming, .onlineShopping],
            status: .verified,
            gender: .man
        )
    }
    
    static var parker: User {
        User(
            id: Int.random(in: 0...1000),
            name: "Peter",
            age: 20,
            city: "London",
            distance: 4,
            pictures: [
                "parker-1",
                "parker-2",
                "parker-3",
                "parker-4"
            ],
            tags: [.onlineShopping, .cooking],
            status: .verified,
            gender: .man
        )
    }
    
    static var ana: User {
        User(
            id: Int.random(in: 0...1000),
            name: "Ana",
            age: 30,
            city: "Barcelona",
            distance: 5,
            pictures: ["ana-1", "ana-2"],
            tags: [.onlineShopping, .cooking],
            status: .verified,
            gender: .woman
        )
    }
}
