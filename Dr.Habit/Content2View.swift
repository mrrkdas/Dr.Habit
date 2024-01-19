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
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 250)
                    VStack(spacing: 20) {
                        InputFieldView(data: $email, title: "Email")
                        InputFieldView(data: $password, title: "Password")
                    }.padding(.bottom, 40)
                    Button(action: {}) {
                        Text("Sign In")
                            .fontWeight(.heavy)
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                    }.padding(.top, 200)
                }
        }
        
    }
}



#Preview {
    Content2View()
}
