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
                        Text("Life Score")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .padding(.top, 120)
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
                        .aspectRatio(2, contentMode: .fit)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 370)
                        .position(x: 199, y:250)
                        .foregroundStyle(.white)
                        .chartXAxis {AxisMarks(values: .automatic) {
                            AxisValueLabel()
                                .foregroundStyle(Color.white)// <= change the style of the label
                            
                            AxisGridLine()
                                .foregroundStyle(Color.white)// <= change the style of the line
                        }
                        }
                        .chartYAxis {AxisMarks(values: .automatic) {
                            AxisValueLabel()
                                .foregroundStyle(Color.white)// <= change the style of the label
                            
                            AxisGridLine()
                                .foregroundStyle(Color.white)// <= change the style of the line
                        }
                        }
                        Text("My Habits")
                            .position(x:79, y:380)
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
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
        }
    }
}

#Preview {
    HomePageView()
}
