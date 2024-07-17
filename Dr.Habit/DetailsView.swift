//
//  DetailsView.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI
import Charts

////checkbox struct
//struct CheckboxItem {
//    var name: String
//    var isChecked: Bool
//}
//
//struct CheckboxView: View {
//    @Binding var item: CheckboxItem
//    
//    var body: some View {
//        HStack {
//            Text(item.name)
//            Spacer()
//            Image(systemName:
//                  item.isChecked ? "checkmark.circle.fill" : "circle")
//            .foregroundColor(item.isChecked ?
//                .green : .gray)
//                .font(.system(size: 18))
//        }
//    }
//}

struct DetailsView: View {
    let scores = [
        HabitScoreData(year: 2024, month: 7, day: 3, score: 0.9),
        HabitScoreData(year: 2024, month: 7, day: 4, score: 1.9),
        HabitScoreData(year: 2024, month: 7, day: 5, score: 4.1),
        HabitScoreData(year: 2024, month: 7, day: 6, score: 4.9),
        //You need to fetch the date
    ]
    
    @State private var items = [
        CheckboxItem(name: "Workout for 30 minutes", isChecked: false),
        CheckboxItem(name: "Read for 5 minutes", isChecked: false),
        CheckboxItem(name: "Karate for 1 hour", isChecked: false),
        CheckboxItem(name: "Meditate for 20 minutes", isChecked: false),
        CheckboxItem(name: "Limit Screen Time", isChecked: false),
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
                    
                    
                    // Account Logo
                    VStack {
                        HStack {
                            Spacer()
                            
                            
                            NavigationLink{
                                SettingView()
                            } label: {
                                Label("", systemImage: "person")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color("myDarkPurple"))
                                    .padding(.trailing, 13)
                                
                            }
                            
                            
                        }
                        Spacer()//place the spacer as per your UI need
                    }
                    
                    
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
                    Text("My Habits")
                        .font(.system(size:30))
                        .multilineTextAlignment(.center)
                        .position(x: 195,y:300)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("myDarkPurple"))
                    
                    
                    List {
                        ForEach($items, id: \.name) {
                            $item in
                            CheckboxView(item:   $item)
                                .padding(10)
                                .listRowBackground(Color("myLightPurple")) // TO-DO: Fix list row background color
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.black, lineWidth: 2)
                                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                                        .frame(width: 340, height: 55)
                                )
                        }
                    }
                    .frame(maxHeight: 150)
                    .frame(maxWidth: 430)
                    .scrollContentBackground(.hidden)
                    .listStyle(.automatic)
                    .padding(.top, 70)
                    
                    
                    
                    
                    //Recommended Habits List
                    
                }
            
            
        }
        }
}

#Preview {
    DetailsView()
}
