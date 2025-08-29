//
//  HeaderView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 12.08.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: AppTabs.cardsTab.iconName)
            Text("tinder")
                .bold()
        }
        .font(.system(size: 28))
        .foregroundStyle(Colors.tinderGradient)
    }
}

#Preview {
    HeaderView()
}
