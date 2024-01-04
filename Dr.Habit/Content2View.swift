//
//  Content2View.swift
//  Dr.Habit
//
//  Created by RKD on 1/3/24.
//

import SwiftUI

struct Content2View: View {
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay {
                    Text("Username")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Text("Password")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
    
            
        }
    }
}

#Preview {
    Content2View()
}
