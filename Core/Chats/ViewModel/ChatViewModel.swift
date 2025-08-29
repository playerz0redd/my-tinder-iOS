//
//  ChatViewModel.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import Foundation


protocol IChatService {
    func fetchChats() -> [ChatModel]?
}

class ChatViewModel: ObservableObject {
    
    // MARK: - Rx
    
    @Published var chats: [ChatModel]?
    
    // MARK: - Dependency
    
    private let chatService: IChatService
    
    
    // MARK: - Init
    
    init(chatService: IChatService) {
        self.chatService = chatService
        self.chats = chatService.fetchChats()
    }
    
}
