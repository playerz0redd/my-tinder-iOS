//
//  ChangeImageView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct ChangeImageView: View {
    
    let imageCount: Int
    @Binding var currentIndex: Int
    
    var body: some View {
        
        HStack {
            Color.clear
                .contentShape(Rectangle())
                .onTapGesture {
                    changeIndex(action: .decrease)
                }

            Color.clear
                .contentShape(Rectangle())
                .onTapGesture {
                    changeIndex(action: .increase)
                }
        }
        .frame(height: Constants.CardConstants.cardHeight)
        
    }
}

private extension ChangeImageView {
    
    enum ChangeIndexAction {
        case increase
        case decrease
    }
    
    func changeIndex(action: ChangeIndexAction) {
        switch action {
        case .increase:
            if currentIndex < imageCount - 1 {
                currentIndex += 1
            }
        case .decrease:
            if currentIndex > 0 {
                currentIndex -= 1
            }
        }
    }
    
}
