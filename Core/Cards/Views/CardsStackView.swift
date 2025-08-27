//
//  CardsStackView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct CardsStackView: View {
    @StateObject var viewModel: CardsViewModel = .init(cardService: MockCardService.init())
    var body: some View {
        ZStack {
            ForEach(Array(viewModel.cards.enumerated()), id: \.element.id) { id, card in
                CardView(card: card)
                    .zIndex(Double(-id))
            }
        }
    }
}

