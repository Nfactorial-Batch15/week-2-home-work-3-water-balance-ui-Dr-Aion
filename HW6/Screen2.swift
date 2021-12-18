//
//  Screen2.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

var screen2Title = "Remind me each"
var time1Button = "15 minutes"
var time2Button = "30 minutes"
var time3Button = "45 minutes"
var time4Button = "1 hours"
var time5Button = "1,5 hours"
var time6Button = "2 hours"
var time7Button = "3 hours"
var time8Button = "4 hours"

struct Screen2: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Header()
            Title(mainTitle: screen2Title)
            TimeSlotsView()
                .padding(.top, 32)
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

struct TimeSlotsView: View{

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(height: 330)
            VStack(spacing: 14){
                HStack(spacing: 14){
                    SmallButtonTime(time: time1Button)
                    SmallButtonTime(time: time2Button)
                }
                HStack(spacing: 14){
                    SmallButtonTime(time: time3Button)
                    SmallButtonTime(time: time4Button)
                }
                HStack(spacing: 14){
                    SmallButtonTime(time: time5Button)
                    SmallButtonTime(time: time6Button)
                }
                HStack(spacing: 14){
                    SmallButtonTime(time: time7Button)
                    SmallButtonTime(time: time8Button)
                }
            }
            .padding(.vertical, 24)
            .padding(.horizontal, 19)
        }
        .frame(height: 330)
    }
}

struct SmallButtonTime: View{
    @State private var selected = false

    var time: String = ""
    var body: some View{
        Button{
            self.selected.toggle()
            print("Time button pressed")
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(style: StrokeStyle(lineWidth: 3))
                            .fill(selected ? Color(red: 24/255, green: 104/255, blue: 253/255) : Color.clear)

                        )
                Text(time)
                    .foregroundColor(.black).foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size:16))
                    .fontWeight(.semibold)
            }
            .frame(height: 60)
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
