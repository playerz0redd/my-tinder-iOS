//
//  MockChats.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import Foundation

struct MockChats {
    static var chat1: ChatModel {
        .init(chatId: 1, name: "Ana", imagePath: "ana-1", isOnline: true)
    }
    
    static var chat2: ChatModel {
        .init(chatId: 2, name: "Jason", imagePath: "statham-1", isOnline: false, lastMessage: "Hello my names is")
    }
    
    static var chat3: ChatModel {
        .init(chatId: 3, name: "Parker", imagePath: "parker-1", isOnline: true)
    }
    
    static var chat4: ChatModel {
        .init(chatId: 4, name: "Cruz", imagePath: "cruz-1", isOnline: false, lastMessage: "Hello my names is")
    }
}
