//
//  HomeView.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI

struct HomeView: View {
    @State var name = "Rishab" // we will later get this from firebase
    @State var selectedDate: Date = Date()
    
    
    
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
                        .position(x:67, y:105)
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

            }
                
            }
    }
}

#Preview {
    HomeView()
}
