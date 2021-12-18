//
//  Main.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

var mainButtonText = "Add"


struct Main: View {
    var body: some View {
        VStack(spacing: 0){
            Text("WATER BALANCE")
                .foregroundColor(Color( red: 5/255, green: 165/255, blue:239/255))
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 30)
            ZStack{
                Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255), Color.white]),
                                           startPoint: .top,
                                           endPoint: .bottom))
                    .frame(height: 332)
                VStack(spacing: 68){
                    ZStack{
                        CircleView()
                        VStack(spacing: 2){
                            Text("0%")
                                .font(.system(size: 36))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .frame(width: 122, height: 46)

                            Text("0 out of 2,4 L")
                                .frame(width: 122, height: 34)
                        }
                    }
                    Text("Monday, 25th of November")
                        .font(.system(size: 16))
                }
                .padding(.top, 32)

            }
            Text("Add your first drink for today")
                .font(.system(size: 36))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 60)
                .padding(.bottom, 125)

            CustomButton(buttonText: mainButtonText)
        }
        
    }
}

struct CircleView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(width: 180, height: 180)
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth:6))
                        .fill(Color.white)
                )
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
