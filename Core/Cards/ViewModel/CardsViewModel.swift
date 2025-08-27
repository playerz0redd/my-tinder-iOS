//
//  CardsViewModel.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import Combine
import Foundation

protocol ICardService {
    func fetchCards() -> [CardModel]
}

final class CardsViewModel: ObservableObject {
    private let cardService: ICardService
    @Published var cards: [CardModel] = []
    private var cancellables: Set<AnyCancellable> = []
    
    init(cardService: ICardService) {
        self.cardService = cardService
        cards.append(contentsOf: fetchCards())
        CardsEvents.shared.subject
            .sink { [weak self] event in
                guard let self = self else { return }
                switch event {
                case .deleteCard(let card):
                    self.deleteCard(id: card.id)
                }
            }
            .store(in: &cancellables)
        
    }
    
    private func fetchCards() -> [CardModel] {
        cardService.fetchCards()
    }
    
    private func deleteCard(id: UUID) {
        guard let index = self.cards.firstIndex(where: {$0.id == id}) else { return }
        self.cards.remove(at: index)
        
        if cards.count < 3 {
            cards.append(contentsOf: fetchCards())
        }
    }
    
}
