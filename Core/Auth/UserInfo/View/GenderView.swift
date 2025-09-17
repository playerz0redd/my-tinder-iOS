//
//  NameView.swift
//  my-tinder
//
//  Created by Pavel Playerz0redd on 5.09.25.
//

import SwiftUI

struct GenderView: View {
    @StateObject var viewModel: UserInfoViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            UserInfoView.textSection(title: title, description: description)
            
            VStack(spacing: 15) {
                ForEach(User.Gender.allCases, id: \.value) { gender in
                    genderButton(gender: gender) {
                        
                    }
                }
            }
            
            Spacer()
        }
    }
}

private extension GenderView {
    func genderButton(gender: User.Gender, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text("I am a \(gender.value)")
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundStyle(.black)
                .fontWeight(.medium)
                .background {
                    Capsule()
                        .foregroundStyle(Colors.tinderGradient)
                }
        }

    }
}

private extension GenderView {
    var title: String {
        "Hi! Let us know you better"
    }
    
    var description: String {
        "Tell us about youself - this will help you create a profile and start communicating right away."
    }
}
