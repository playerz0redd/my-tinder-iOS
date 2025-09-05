//
//  ChatsView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import SwiftUI

struct ChatsView: View {
    @StateObject var viewModel: ChatViewModel = .init(chatService: MockChatService())
    var body: some View {
        ScrollView(showsIndicators: true) {
            if let chats = viewModel.chats {
                ForEach(chats, id: \.self) { chat in
                    ChatRowView(chat: chat)
                }
            } else {
                Text("There is no chats")
            }
        }
    }
}

#Preview {
    ChatsView()
}
