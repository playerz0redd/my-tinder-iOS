//
//  GettingUsernameView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 5.09.25.
//

import SwiftUI

struct UserInfoView: View {
    @StateObject var viewModel: UserInfoViewModel
    var body: some View {
        VStack {
            progressBar(of: viewModel.progressBarWidth)
                .frame(alignment: .top)
            Button {
                viewModel.currentPhase.next()
            } label: {
                Text("next")
            }
            Spacer()

        }
        .padding(0)
        .animation(.spring, value: viewModel.currentPhase)
    }
}

private extension UserInfoView {
    func progressBar(of width: CGFloat) -> some View {
        ZStack(alignment: .leading) {
            rectangle(of: Constants.ScreenConstants.screenWidth, color: Colors.tinderWhite)
            rectangle(of: width, color: Colors.tinderGradient)
        }
    }
    
    func rectangle(of width: CGFloat, color: some ShapeStyle) -> some View {
        Rectangle()
            .frame(width: width, height: 20)
            .foregroundStyle(color)
    }
}

