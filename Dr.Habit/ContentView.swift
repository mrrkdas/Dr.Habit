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
    @State var opacity = 0.0
    
    var body: some View {
        Color("myBackgroundColor")
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text("Dr. Habit")
                        .font(.system(size:65))
                        .fontWeight(.bold)
                        .foregroundStyle(Color("myDarkPurple"))
                        .opacity(opacity)
                        .onAppear{
                            let baseAnimation = Animation.easeIn(duration: 2)
                            let repeated = baseAnimation.repeatCount(1)
                            
                            withAnimation(repeated) {
                                opacity = 1
                                            }
                            
                            
                            
                        }
                }
            
                
                        
            }
            
        }
        
    }
    




#Preview {
    ContentView()
}
