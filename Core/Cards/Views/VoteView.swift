//
//  VoteView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct VoteView: View {
    var body: some View {
        HStack {
            icon(text: "LIKE", color: .green, angle: -20)
            
            Spacer()
            
            icon(text: "NOPE", color: .red, angle: 20)
        }
    }
}

private extension VoteView {
    
    func icon(text: String, color: Color, angle: CGFloat) -> some View {
        Text(text)
            .font(.system(size: 26))
            .foregroundStyle(color)
            .padding(8)
            .fontWeight(.bold)
            .overlay {
                RoundedRectangle(cornerRadius: 6)
                    .stroke(color, lineWidth: 3)
            }
            .rotationEffect(.degrees(angle))
    }
}
