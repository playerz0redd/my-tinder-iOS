//
//  CircleButtonNext.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 6.09.25.
//

import SwiftUI

struct CircleButton<Content: View>: View {
    let content: Content
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            content
                .padding(25)
                .background {
                    Circle()
                        .fill(Colors.tinderBlack)
                }
        }

    }
}
