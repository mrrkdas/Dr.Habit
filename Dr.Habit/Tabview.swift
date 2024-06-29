//
//  Tabview.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI

struct Tabview: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        Text("Home")
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Add Habit")
                }
            DetailsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Statistics")
                }
        }
        .accentColor(Color("myDarkPurple"))
        .onAppear() {
            UITabBar.appearance().backgroundColor =  UIColor(Color("myBackgroundColor"))
        }
        
    }
}

#Preview {
    Tabview()
}
