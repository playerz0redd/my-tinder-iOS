//
//  ImageIndexView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct ImageIndexView: View {
    let count: Int
    let currentIndex: Int
    var body: some View {
        HStack {
            ForEach(0 ..< count, id: \.self) { index in
                Capsule()
                    .foregroundStyle(.white)
                    .opacity(index == currentIndex ? 1 : 0.3)
                    .frame(height: 4)
            }
        }
    }
}

