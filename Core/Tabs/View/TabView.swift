//
//  TabView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 11.08.25.
//

import SwiftUI

struct TabView: View {
    @Binding private var selectedTab: AppTabs
    
    init(selectedTab: Binding<AppTabs>) {
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        HStack {
            ForEach(AppTabs.allCases, id: \.self) { tab in
                Button {
                    self.selectedTab = tab
                } label: {
                    Image(systemName: tab.iconName)
                        .font(.system(size: 30))
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(
                            selectedTab != tab ? AnyShapeStyle(Colors.tagGray) :
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
