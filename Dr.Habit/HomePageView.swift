//
//  HomePageView.swift
//  Dr.Habit
//
//  Created by RKD on 1/26/24.
//

import SwiftUI
import Charts

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
                        Chart {
                            LineMark(x: .value("Type", "bird"),
                                    y: .value("Population", 1))
                            .foregroundStyle(.pink)

                            LineMark(x: .value("Type", "dog"),
                                    y: .value("Population", 10))
                            .foregroundStyle(.green)

                            LineMark(x: .value("Type", "cat"),
                                    y: .value("Population", 3))
                            .foregroundStyle(.blue)
                        }
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                    }
            }
        }
    }
}

#Preview {
    HomePageView()
}
