//
//  my_tinderApp.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import SwiftUI
import Firebase


@main
struct my_tinderApp: App {
    
    // MARK: - Init
    
    init() {
        FirebaseApp.configure()
    }
    

    var body: some Scene {
      WindowGroup {
        NavigationView {
            RulesView()
            //ContentView(router: .init(currentTab: .cardsTab))
        }
      }
    }
}
