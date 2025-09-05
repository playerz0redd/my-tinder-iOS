//
//  GettingUsernameViewModel.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 5.09.25.
//

import Foundation
import Combine

final class UserInfoViewModel: ObservableObject {
    @Published var userModel: UserInfoModel
    @Published var progressBarWidth: CGFloat = 0
    @Published var currentPhase: ProgressPhase = .gettingName
    private var cancellables: Set<AnyCancellable> = []
    
    init(userModel: UserInfoModel) {
        self.userModel = userModel
        $currentPhase.sink { phase in
            self.progressBarWidth = Constants.ScreenConstants.screenWidth /
                CGFloat(ProgressPhase.allCases.count) * CGFloat(phase.rawValue + 1)

            print(self.progressBarWidth)
        }
        .store(in: &cancellables)
    }
    
}

extension UserInfoViewModel {
    
    enum ProgressPhase: Int, CaseIterable {
        case gettingName = 0
        case gettingEmail = 1
        case gettingTags = 2
        case done = 3
        
        mutating func next() {
            switch self {
            case .gettingName:  self = .gettingEmail
            case .gettingTags:  self = .done
            case .gettingEmail: self = .gettingTags
            case .done:         self = .gettingName
            }
        }
    }
}
