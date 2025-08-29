//
//  my_tinderApp.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import SwiftUI

@main
struct my_tinderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(router: .init(currentTab: .cardsTab))
        }
    }
}
