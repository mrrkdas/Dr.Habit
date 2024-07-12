//
//  HomeView.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI
import Charts


//checkbox struct
struct CheckboxItem {
    var name: String
    var isChecked: Bool
}

struct CheckboxView: View {
    @Binding var item: CheckboxItem
    
    var body: some View {
        HStack {
            Text(item.name)
            Spacer()
            Image(systemName:
                  item.isChecked ? "checkmark.circle.fill" : "circle")
            .foregroundColor(item.isChecked ?
                .green : .gray)
                .font(.system(size: 18))
        }
    }
}


// Chart Struct
// Multiple Lines: https://www.appcoda.com/swiftui-line-charts/
struct HabitScoreData: Identifiable {
    let id = UUID()
    let date: Date
    let score: Double
    
    init(year: Int, month: Int, day: Int, score: Double) {
        self.date = Calendar.current.date(from:.init(year: year, month: month, day: day)) ?? Date()
        self.score = score
    }
}




struct HomeView: View {
    @State var name = "Rishab" // we will later get this from firebase
    @State var selectedDate: Date = Date()
    @State var score: Float = 1.2 // We will get this from data
    
    // TO-DO: Add toggle to list
    @State private var items = [
        CheckboxItem(name: "Workout for 30 minutes", isChecked: false),
        CheckboxItem(name: "Read for 5 minutes", isChecked: false),
        CheckboxItem(name: "Karate for 1 hour", isChecked: false),
        CheckboxItem(name: "Meditate for 20 minutes", isChecked: false),
        CheckboxItem(name: "Limit Screen Time", isChecked: false),
    ]
    
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
                Text("Hello")
                    .font(.system(size:45))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("myDarkPurple"))
                    .offset(x:-110, y:-315)
                Text(name)
                    .font(.system(size:45))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("myDarkPurple"))
                    .offset(x:-50, y:-264)
                
                
                
                
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
                
                //Text For Date Picker (seperate because for UI)
                ZStack {
                    Text("Select Date: ")
                        .position(x:69, y:105)
                        .transformEffect(.init(scaleX: 1.7, y: 1.7))
                    
                    
                    // Date Picker
                    DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                        .padding(.horizontal)
                        .frame(width: 150, height: 80, alignment: .center)
                        .position(x:170, y:105)
                        .transformEffect(.init(scaleX: 1.7, y: 1.7))
                        .font(.system(size:45))
                        .fontWeight(.bold)
                    
                    
                }
                .fontWeight(.bold)
                
                

                
                Text("Todays Score:")
                    .position(x: 89,y:241)
                    .fontWeight(.bold)
                    .font(.system(size:13))
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color("myLightPurple"))
                            .frame(width:108, height: 167)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black, lineWidth: 2)
                                
                            )
                            .shadow(color: .black, radius: 1, x: 1, y: 1)
                            .position(x: 89, y:300)
                            .overlay(
                                Text(String(score))
                                    .position(x: 89, y:300)
                                    .font(.system(size:45))
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color("myDarkPurple"))
                            )

                            
                    
                    )
                
                
                Text("Your Habits: ")
                    .font(.system(size:30))
                    .position(x: 264,y:241)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("myDarkPurple"))
                
                
                // Changing the position of this
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
                                    .frame(width: 190, height: 55)
                            )
                    }
                }
                .frame(maxHeight: 100)
                .frame(maxWidth: 230)
                .position(x:264, y:310)
                .scrollContentBackground(.hidden)
                .listStyle(.automatic)
                
                
                //Chart View
//                Text("Habit Score")
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 65)
//                    .fontWeight(.bold)
//                    .foregroundStyle(Color("myDarkPurple"))
//                    .font(.system(size:30))

                GroupBox("Habit Score") {
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
                    .frame(width: 340, height: 150)
                    .padding(.top, 290)
                    .chartPlotStyle { plotArea in
                        plotArea
                            .background(Color("myLightPurple").opacity(0.2))
                    }
                }
                .frame // TO-DO: Change height of group box
                
                
            }
                
        }
    }
}

#Preview {
    HomeView()
}
