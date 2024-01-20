//
//  ContentView.swift
//  Dr.Habit
//
//  Created by RKD on 12/24/23.
//

import SwiftUI
import UIKit

// we can use a list of questions to ask

/*
enum Questions {
 
 
 
}
 
 
 
 */

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay {
                        Text("Welcome To Dr. Habit")
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                        NavigationLink(destination: Content2View().navigationBarBackButtonHidden(true)) {
                            Text("Continue →")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.white)
                                .padding(.top, 90)
                        }
                    }
                
        
                
            }
        }
        
    }
    
}



#Preview {
    ContentView()
}
