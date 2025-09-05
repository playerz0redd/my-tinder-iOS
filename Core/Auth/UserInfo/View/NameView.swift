//
//  NameView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 6.09.25.
//

import SwiftUI

struct NameView: View {
    @StateObject var viewModel: UserInfoViewModel
    var body: some View {
        VStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 20) {
                UserInfoView.textSection(title: title, description: description)
                
                nameField()
            }
            
            CircleButton(
                content: Image(systemName: "chevron.forward")
                    .font(.system(size: 28))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            )
            {
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        }
    }
}

private extension NameView {
    func nameField() -> some View {
        TextField("", text: $viewModel.userModel.username, prompt: Text("What is your name?"))
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Colors.tinderGradient, lineWidth: 2.5)
                    .fill(Colors.tinderWhite)
            )
            .font(.system(size: 20))
            .bold()
    }
}

private extension NameView {
    var title: String {
        "What is your name?"
    }
    
    var description: String {
        "Be yourself in choosing a name-real profiles are more attractive for users."
    }
}

