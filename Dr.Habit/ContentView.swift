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

extension View {
    func animate(using animation: Animation = .easeInOut(duration: 1), _ action: @escaping () -> Void) -> some View {
        onAppear {
            withAnimation(animation) {
                action()
            }
        }
    }
}

struct ContentView: View {
    @State var scale = 1.0
    
    var body: some View {
        Color("myBackgroundColor")
            .ignoresSafeArea()
            .overlay {
                VStack {
                        Text("Dr. Habit")
                            .font(.system(size:65))
                            .fontWeight(.bold)
                            .foregroundStyle(Color("myDarkPurple"))
                            .scaleEffect(scale)
                            .animate {
                                scale = 1.5
                            }
            }
            
                
                        
            }
            
        }
        
    }
    




#Preview {
    ContentView()
}
