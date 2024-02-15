//
//  WelcomeView.swift
//  Dr.Habit
//
//  Created by RKD on 1/25/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay {
                        Text("Welcome Rishab")
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .padding(.bottom, 100)
                        Text("“Successful people are simply those with successful habits.” - Brain Tracy")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .padding(.top, 50)
                            .multilineTextAlignment(.center)
                        VStack {
                            NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)) {
                                Text("Continue →")
                                    .font(.title2)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                    .position(x:200, y:650)
                            }

                        }

                                            }
                                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
