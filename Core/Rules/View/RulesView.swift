//
//  RulesView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 2.09.25.
//

import SwiftUI

struct RulesView: View {
    let viewModel: RulesViewModel = .init()
    var body: some View {
        ScrollView(showsIndicators: false) {
            Text("Welcome to Tinder")
                .font(.title)
                .bold()
            
            Text("Please follow these house rules")
                .foregroundStyle(Colors.tagGray)
                .font(.callout)
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach(viewModel.rules.sorted(by: {$0.key < $1.key}), id: \.key) { caption, rule in
                    RowRuleView(caption: caption, rule: rule)
                }
            }
            .padding(.vertical, 30)
            
            TLongButton(buttonText: "I Agree") {
                
            }
            
            Spacer()

        }
        .padding(.horizontal, 20)
        .padding(.top, 70)

    }
}

