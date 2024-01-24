//
//  QuestionView.swift
//  Dr.Habit
//
//  Created by RKD on 1/19/24.
//

import SwiftUI

struct QuestionView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var dob: String = ""
    @State private var gender: String = ""
    @State private var height: String = ""
    @State private var weight: String = ""
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.myPurple, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    .overlay {
                        HStack {
                            Text("Name")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y:50)
                            TextField("Name", text: $name)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:50)
                            
                        }
                        HStack {
                            Text("Age")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y:130)
                            TextField("Age", text: $age)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:130)
                        }
                        HStack {
                            Text("DOB")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y:210)
                            TextField("Date Of Birth", text: $dob)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:210)
                        }
                        HStack {
                            Text("Gender")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y:290)
                            TextField("Gender", text: $gender)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:290)
                        }
                        
                        HStack {
                            Text("Height")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y:370)
                            TextField("Height", text: $height)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:370)
                        }
                        
                        HStack {
                            Text("Weight")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .position(x:60, y: 450)
                            TextField("Weight", text: $weight)
                                .padding(.horizontal, 10)
                                .frame(height: 42)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .overlay(  // add an overlay
                                    RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .frame(width: 250, height: 100)
                                .position(x:50, y:450)

                        }
                    }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    @State static var name: String = ""
    
    static var previews: some View {
        QuestionView()
    }
}

