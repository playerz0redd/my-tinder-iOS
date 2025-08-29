//
//  MockChatService.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

class MockChatService: IChatService {
    func fetchChats() -> [ChatModel]? {
        [
            MockChats.chat1,
            MockChats.chat2,
            MockChats.chat3,
            MockChats.chat4
        ]
    }
    
    
}
