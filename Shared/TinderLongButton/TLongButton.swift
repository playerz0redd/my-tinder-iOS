//
//  TLongButton.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 2.09.25.
//

import SwiftUI

struct TLongButton: View {
    let buttonText: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .foregroundStyle(.white)
                .font(.title3)
                .fontWeight(.bold)
                .frame(width: Constants.TButtonConstans.buttonWidth, height: 50)
                .background {
                    Capsule()
                        .foregroundStyle(Colors.tinderGradient)
                }
        }
    }
}
