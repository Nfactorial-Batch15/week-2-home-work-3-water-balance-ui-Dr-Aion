//
//  History.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

struct History: View {
    @State var text1: String = ""
    @State var text2: String = ""
    @State var text3: String = ""
    @State var text4: String = ""

    var body: some View {
        VStack(spacing: 0){
            Text("TODAY")
                .foregroundColor(Color( red: 5/255, green: 165/255, blue:239/255))
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 31)
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Text("250 ml")
                        .font(.system(size: 17))
                        .frame(width: 309, height: 22, alignment: .leading)
                    CustomTextFieldSettings(placeholder: Text("12:13"), text: self.$text1)
                }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)
                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
                HStack{
                    Text("200 ml")
                        .font(.system(size: 17))
                        .frame(width: 309, height: 22, alignment: .leading)
                    CustomTextFieldSettings(placeholder: Text("14:10"), text: self.$text2)
                }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)
                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
                HStack{
                    Text("50 ml")
                        .font(.system(size: 17))
                        .frame(width: 309, height: 22, alignment: .leading)
                    CustomTextFieldSettings(placeholder: Text("15:13"), text: self.$text3)
                }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)
                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
                HStack{
                    Text("300 ml")
                        .font(.system(size: 17))
                        .frame(width: 309, height: 22, alignment: .leading)
                    CustomTextFieldSettings(placeholder: Text("19:10"), text: self.$text4)
                }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)

                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
            }.padding(.horizontal, 16)
            Spacer()
        }
    }
}

struct CustomTextFieldSettings: View{
    var placeholder: Text
    @Binding var text: String
    
    var body: some View{
        ZStack(alignment: .center){
            if text.isEmpty{
                placeholder.foregroundColor(.gray)
            }
            TextField("", text: $text)
                .foregroundColor(.blue)
                .font(.system(size: 17, weight: .semibold))
                .frame(height: 22)
                .keyboardType(.numberPad)
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
