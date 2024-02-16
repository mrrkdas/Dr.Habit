//
//  ScrollViewforWelcome.swift
//  Dr.Habit
//
//  Created by RKD on 2/15/24.
//

import SwiftUI

struct ScrollViewforWelcome: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    
                    Text("Item \($0)")
                        .fontWeight(.heavy)
                        .font(.title3)
                        .frame(maxWidth: 340)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.myPurple, .purple]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                }
                
            }
        }
        .position(x:190, y:800)
        .padding(.bottom, -40)
    }
}

#Preview {
    ScrollViewforWelcome()
}
