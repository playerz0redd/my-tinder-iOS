//
//  ContentView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router: AppRouter
    var body: some View {
        VStack {
            HeaderView()
            Group {
                switch router.currentTab {
                case .cardsTab: CardsStackView(viewModel: .init(cardService: MockCardService()))
                case .chats: ChatsView(viewModel: .init(chatService: MockChatService()))
                case .profile: CardsStackView(viewModel: .init(cardService: MockCardService()))
                case .star: CardsStackView(viewModel: .init(cardService: MockCardService()))
                case .search: Text("Search")
                }
            }
            TabView(selectedTab: $router.currentTab)
        }
        .animation(.easeOut, value: self.router.currentTab)
    }
}

