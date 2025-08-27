//
//  Constants.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct Constants {
    
    struct ScreenConstants {
        
        static var screenHeight: CGFloat {
            UIScreen.main.bounds.height
        }
        
        static var screenWidth: CGFloat {
            UIScreen.main.bounds.width
        }
        
    }
    
    struct CardConstants {
        
        static var cardWidth: CGFloat {
            Constants.ScreenConstants.screenWidth
        }
        
        static var cardHeight: CGFloat {
            Constants.ScreenConstants.screenHeight * 0.75
        }
    }
    
}
