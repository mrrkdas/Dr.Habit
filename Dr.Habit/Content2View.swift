//
//  Content2View.swift
//  Dr.Habit
//
//  Created by RKD on 1/3/24.
//

import SwiftUI

struct Content2View: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .overlay {
                    Text("Create")
                        .position(x:100, y:100)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    Text("Account")
                        .position(x:115, y:150)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    
                    
                    Form {
                        
                        TextField("Enter your name", text: $name)
                            .position(x:100, y:100)
                            .foregroundColor(.white)
                        TextField("Enter your email", text: $email)
                            .position(x:100, y:100)
                            .foregroundColor(.white)
                        SecureField("Enter your Password", text: $password)
                            .position(x:100, y:100)
                            .foregroundColor(.white)
                    }
                    
                }
        }
        
    }
}



#Preview {
    Content2View()
}
