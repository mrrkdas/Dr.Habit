//
//  FewMomentsToAnswer.swift
//  Dr.Habit
//
//  Created by RKD on 1/18/24.
//

import SwiftUI

struct FewMomentsToAnswer: View {
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay {
                    Text("Please Take a Few Minutes to Answer These Questions")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
        }
    }
}

#Preview {
    FewMomentsToAnswer()
}
