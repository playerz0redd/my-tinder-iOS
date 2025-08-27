//
//  Colors.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 12.08.25.
//

import Foundation
import SwiftUI

struct Colors {
    static var tinderGradient: LinearGradient {
        LinearGradient(
            colors: [
                Color(
                    red: 238/255,
                    green: 128/255,
                    blue: 95/255
                ),
                Color(
                    red: 234/255,
                    green: 64/255,
                    blue: 128/255
                )
            ],
            startPoint: .leading,
            endPoint: .trailing
        )
    }
}
