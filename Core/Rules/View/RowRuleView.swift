//
//  RowRuleView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 2.09.25.
//

import SwiftUI

struct RowRuleView: View {
    let caption: String
    let rule: String
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(systemName: "checkmark")
                .foregroundStyle(Colors.tinderGradient)
                .bold()
            
            VStack(alignment: .leading) {
                Text(caption)
                    .bold()
                
                Text(rule)
                    .font(.callout)
                    .foregroundStyle(Colors.tagGray)
            }
            
        }
    }
}

