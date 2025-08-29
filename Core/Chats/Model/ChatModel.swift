//
//  ChatModel.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import Foundation

struct ChatModel: Hashable {
    let chatId: Int
    let name: String
    let imagePath: String
    var isOnline: Bool
    var lastMessage: String?
}
