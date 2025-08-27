//
//  CardsInfrastructure.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 14.08.25.
//

import Combine

final class CardsEvents {
    static let shared = CardsEvents()
    
    private init() { }
    
    enum Events {
        case deleteCard(CardModel)
    }
    
    let subject = PassthroughSubject<Events, Never>()
}
