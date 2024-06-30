//
//  HomeView.swift
//  Dr.Habit
//
//  Created by RKD on 6/28/24.
//

import SwiftUI

struct HomeView: View {
    @State var name = "Rishab" // we will later get this from firebase
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
                }
                
            }
    }
}

#Preview {
    HomeView()
}
