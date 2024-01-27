//
//  HomePageView.swift
//  Dr.Habit
//
//  Created by RKD on 1/26/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay {
                        Text("Welcome Rishab")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        Text("Progress")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .font(.title)
                            .padding(.top, 60)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
            }
        }
    }
}

#Preview {
    HomePageView()
}
