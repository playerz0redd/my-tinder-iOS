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
        VStack(spacing: 30) {
                HStack(alignment: .top) {
                    backButton {
                        
                    }
                    GeometryReader { proxy in
                        progressBar(of: proxy.size.width)
                            .frame(alignment: .top)
                    }
                    .frame(height: 20)
            }
            
            //GenderView(viewModel: viewModel)
            NameView(viewModel: viewModel)
                .padding(5)
            
            
        }
        .padding(15)
        .animation(.spring, value: viewModel.currentPhase)
    }
}

private extension UserInfoView {
    func progressBar(of width: CGFloat) -> some View {
        ZStack(alignment: .leading) {
            rectangle(of: width, color: Colors.tinderWhite)
            rectangle(of: viewModel.getProgressWidth(of: width), color: Colors.tinderGradient)
                      
        }
    }
    
    func rectangle(of width: CGFloat, color: some ShapeStyle) -> some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: width, height: 20)
            .foregroundStyle(color)
    }
    
    func backButton(action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: "arrowshape.turn.up.backward.fill")
                .foregroundStyle(Colors.tinderGradient)
                .font(.system(size: 20))
        }
    }
}

extension UserInfoView {
    static func textSection(title: String, description: String) -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
        }
    }
}

