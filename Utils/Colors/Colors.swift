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
    
    static let tagGray: Color = .init(red: 80/255, green: 89/255, blue: 101/255)
    
    static let tinderWhite: Color = .init(red: 240/255, green: 242/255, blue: 244/255)
    
    static let tinderBlack: Color = .init(red: 46/255, green: 41/255, blue: 41/255)
}
