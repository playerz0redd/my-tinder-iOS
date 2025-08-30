//
//  CardView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import SwiftUI

struct CardView: View {
    @State private var card: CardModel
    @State private var offset: CGFloat = .zero
    @State private var angle: CGFloat = .zero
    @State private var opacity: Double = 0
    @State private var currentImageIndex = 0
    @State private var isFlipped: Bool = false
    init(card: CardModel) {
        self.card = card
    }
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            
            ZStack(alignment: .top) {
                
                Image(card.user.pictures[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: Constants.CardConstants.cardWidth,
                           height: Constants.CardConstants.cardHeight)
                    .clipped()
                    .overlay {
                        LinearGradient(
                            colors: [
                                .black.opacity(0),
                                .black.opacity(0),
                                .black.opacity(1)
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    }
              
                VoteView()
                    .padding(20)
                    .opacity(opacity)
                
                ImageIndexView(count: card.user.pictures.count, currentIndex: currentImageIndex)
                    .padding(10)
                
            }
            .animation(.spring(), value: currentImageIndex)
            
            
            ChangeImageView(
                imageCount: card.user.pictures.count,
                currentIndex: $currentImageIndex
            )
            

            VStack(alignment: .leading) {
                infoSection(user: card.user)
                tagsView(tags: card.user.tags)
            }
            .padding(.bottom, 30)
            
        
        }
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .gesture(
            DragGesture()
                .onChanged(onChange)
                .onEnded(onEnd)
        )
        .animation(.snappy, value: offset)
        .animation(.snappy, value: angle)
        .offset(x: offset)
        .rotationEffect(.degrees(angle))
        .sensoryFeedback(.impact, trigger: isFlipped)
    }
}

private extension CardView {
    
    private func infoSection(user: User) -> some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(user.name)
                    .fontWeight(.bold)
                    .font(.system(size: 26))
                
                Text("\(user.age)")
                    .fontWeight(.regular)
                    .font(.system(size: 23))
                
                if user.status == .verified {
                    Image(systemName: "checkmark.seal")
                        .foregroundStyle(.blue)
                        .font(.title)
                        .bold()
                }
            }
            
            Text("Lives in \(user.city)")
                .font(.system(size: 16))
            
            Text("\(user.distance ?? 0) kilometer away")
                .font(.system(size: 16))
            
            
        }
        .foregroundColor(.white)
    }
}

private extension CardView {
    
    private func tagsView(tags: [User.Tags]?) -> some View {
        CustomHStack {
            if let tags = tags {
                ForEach(tags, id: \.self) { tag in
                    tagCapsule(tag: tag)
                }
            }
        }
    }
    
    private func tagCapsule(tag: User.Tags) -> some View {
        Text(tag.value)
            .padding(.horizontal, 8)
            .padding(.vertical, 5)
            .foregroundStyle(.white)
            .background {
                Capsule()
                    .fill(Colors.tagGray.opacity(0.9))
                    .stroke(Color.white, lineWidth: 1)
            }
    }
}

private extension CardView {
    private func onChange(value: DragGesture.Value) -> Void {
        offset = value.translation.width
        angle = value.translation.width / 50
        opacity = abs(value.translation.width) / 250
    }
    
    private func onEnd(value: DragGesture.Value) -> Void {
        if abs(value.translation.width) < 200 {
            offset = 0
            angle = 0
            opacity = 0
            
        }
        else {
            offset = value.translation.width > 0 ? 500 : -500
            isFlipped.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                CardsEvents.shared.subject.send(.deleteCard(card))
            }
        }
    }
}

