//
//  InputFieldView.swift
//  Dr.Habit
//
//  Created by RKD on 1/8/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    
    var body: some View {
        // some code here
        ZStack {
            TextField("", text: $data)
                .padding(.horizontal, 10)
                .frame(height: 42)
                .overlay(  // add an overlay
                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                        .stroke(Color.gray, lineWidth: 1)
                )
            
            HStack {                    // HStack for the text
                Text(title ?? "Input")
                    .font(.headline)
                    .fontWeight(.thin)      // making the text small
                    .foregroundColor(Color.gray)    // and gray
                    .multilineTextAlignment(.leading)
                    .padding(4)
                    .background(.white)     // adding some white background
                Spacer()                  // pushing the text to the left
            }
            .padding(.leading, 8)
            .offset(CGSize(width: 0, height: -20))
        }.padding(4)
        
    }
}

/*#Preview {
    InputFieldView(data: $data)
}*/

struct InputFieldView_Previews: PreviewProvider {
    @State static var data: String = ""
    
    static var previews: some View {
        InputFieldView(data: $data, title: "Password")
    }
}
