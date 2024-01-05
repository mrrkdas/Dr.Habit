//
//  Content2View.swift
//  Dr.Habit
//
//  Created by RKD on 1/3/24.
//

import SwiftUI

struct Content2View: View {
    
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay {
                    Text("Username")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .position(x:100, y:100)
                    
                    Text("Password")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(alignment:.top)
                        .position(x:180, y:180)
                    
                    
                    
                }
                .overlay{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Password")
                            .foregroundStyle(.white)
                            Capsule()
                                .stroke(lineWidth: 3)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 50)

                }
            
                }
        }
    }
}



#Preview {
    Content2View()
}
