//
//  CustomHStack.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 15.08.25.
//

import SwiftUI

struct CustomHStack: Layout {
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {
        var totalHeight: CGFloat = subviews[0].sizeThatFits(.unspecified).height
        var currentWidth: CGFloat = .zero
        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            currentWidth += size.width
            if currentWidth > 220 {
                currentWidth = .zero
                totalHeight += size.height + 10
            }
        }
        
        return CGSize(
            width: Constants.ScreenConstants.screenWidth,
            height: totalHeight
        )
    }
    
    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        var currentX = bounds.minX
        var currentY = bounds.minY
        
        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            subview
                .place(
                    at: .init(
                        x: currentX,
                        y: currentY
                    ),
                    proposal: ProposedViewSize(
                        width: size.width,
                        height: size.height
                    )
                )
            currentX += size.width + 10
            
            if currentX > bounds.minX + 200 {
                currentX = bounds.minX
                currentY += size.height + 10
            }
        }
    }
    
    
}

