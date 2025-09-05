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
            UserInfoView(viewModel: .init(userModel: .init(username: "", email: "", sex: .man, age: 10)))
            //RulesView()
            //ContentView(router: .init(currentTab: .cardsTab))
        }
      }
    }
}
