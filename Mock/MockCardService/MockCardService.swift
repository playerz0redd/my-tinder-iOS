//
//  MockCardService.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import Foundation

final class MockCardService: ICardService {
    func fetchCards() -> [CardModel] {
        [
            .init(user: MockUsers.ana),
            .init(user: MockUsers.cruz),
            .init(user: MockUsers.jason),
            .init(user: MockUsers.parker)
        ]
    }
}
