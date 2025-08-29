//
//  ChatRowView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import SwiftUI

struct ChatRowView: View {
    @State var chat: ChatModel
    var body: some View {
        HStack(spacing: 15) {
            avatarView()
            VStack {
                Text(chat.name)
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(chat.lastMessage ?? "No messages")
                    .font(.callout)
                    .foregroundStyle(Colors.tagGray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
        .padding(.leading, 20)
    }
}

private extension ChatRowView {
    private var avatarSize: CGFloat { 80 }
    private func avatarView() -> some View {
        ZStack {
            Image(chat.imagePath)
                .resizable()
                .frame(width: 80, height: 80)
                .scaledToFill()
                .clipShape(Circle())
            
            Circle()
                .fill(chat.isOnline ? .green : .red)
                .stroke(.white, style: .init(lineWidth: 3))
                .frame(width: 20, height: 20)
                .offset(x: avatarSize / 2)
        }
    }
}

