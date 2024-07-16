//
//  DetailsView.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI
import Charts

struct DetailsView: View {
    let scores = [
        HabitScoreData(year: 2024, month: 7, day: 3, score: 0.9),
        HabitScoreData(year: 2024, month: 7, day: 4, score: 1.9),
        HabitScoreData(year: 2024, month: 7, day: 5, score: 4.1),
        HabitScoreData(year: 2024, month: 7, day: 6, score: 4.9),
        //You need to fetch the date
    ]
    
    var body: some View {
        NavigationStack{
            Color("myBackgroundColor")
                .ignoresSafeArea()
                .overlay {
                    Text("Habit Score")
                    //                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("myDarkPurple"))
                        .font(.system(size:30))
                        .position(x: 195, y:45)
                    
                    
                    Chart{
                        ForEach(scores) {item in
                            LineMark(
                                x: .value("Month", item.date),
                                y: .value("Score", item.score)
                            )
                            .symbol(.circle)
                            .interpolationMethod(.catmullRom)
                            .lineStyle(.init(lineWidth: 5))
                            .foregroundStyle(Color("myDarkPurple"))
                            
                            AreaMark(
                                x: .value("Month", item.date),
                                y: .value("Score", item.score)
                            )
                            .interpolationMethod(.catmullRom)
                            .foregroundStyle(Color("myLightPurple"))
                        }
                    }
                    .position(x: 173, y:-280)
                    .frame(width: 340, height: 150)
                    .padding(.top, 290)
                    .chartPlotStyle { plotArea in
                        plotArea
                            .background(Color("myLightPurple").opacity(0.2))
                    }
                    
                    
                    
                    // There habit list
                    
                }
        }
        }
}

#Preview {
    DetailsView()
}
