//
//  ContentView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 10.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            CardsStackView()
            TabView()
        }
    }
}

#Preview {
    ContentView()
}
