//
//  Screen3.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

var screen3Title = "Daily Intake?"
var buttonTextScreen3 = "Save"

struct Screen3: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Header()
            Title(mainTitle: screen3Title)
            MLView().padding(.top, 32)
            Spacer()
            CustomButton(buttonText: buttonText)
                .padding(.top, 116)
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
        .padding(.vertical, 0)
        .background(Color( red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MLView: View{
    @State var text: String = ""
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(height: 108)
            HStack(spacing: 12){
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                        .frame(height: 60)
                    CustomTextField(placeholder: Text("0"), text: self.$text)
                }
                Text("ML")
            }.padding(EdgeInsets(top: 24, leading: 19, bottom: 24, trailing: 40))
        }
        .frame(height: 108)
    }
}

struct CustomTextField: View{
    var placeholder: Text
    @Binding var text: String
    
    var body: some View{
        ZStack(alignment: .center){
            if text.isEmpty{
                placeholder.foregroundColor(.blue)
            }
            TextField("", text: $text)
                .foregroundColor(.blue)
                .font(.system(size: 17, weight: .semibold))
                .frame(width: 46, height: 22)
                .keyboardType(.numberPad)
        }
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}
