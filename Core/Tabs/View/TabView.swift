//
//  TabView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct TabView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        HStack {
            ForEach(TabIcons.allCases, id: \.self) { icon in
                Button {
                    self.selectedTab = icon.rawValue
                } label: {
                    Image(systemName: icon.iconName)
                        .font(.system(size: 30))
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(
                            selectedTab != icon.rawValue ? AnyShapeStyle(.black) :
                                AnyShapeStyle(Colors.tinderGradient)
                            )
                        .animation(.easeInOut, value: selectedTab)
                }
            }
            .animation(.easeInOut, value: selectedTab)
        }
        .padding(.horizontal, 30)
        .padding(.top, 13)
    }
}
