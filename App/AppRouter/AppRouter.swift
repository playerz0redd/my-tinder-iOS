//
//  AppRouter.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 29.08.25.
//

import Foundation

final class AppRouter: ObservableObject {
    
    // MARK: - Rx
    @Published var currentTab: AppTabs
    
    // MARK: - Init
    init(currentTab: AppTabs) {
        self.currentTab = currentTab
    }
}
