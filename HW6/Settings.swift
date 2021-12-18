//
//  Settings.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

struct Settings: View {

    var body: some View {
        VStack(spacing: 0){
            
            Text("EDIT")
                .foregroundColor(Color( red: 5/255, green: 165/255, blue:239/255))
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 31)
            VStack(alignment: .leading, spacing: 0){
                //1st line
                HStack{
                    Text("Daily Intake Level")
                        .font(.system(size: 17))
                        .frame(width: 250, height: 22, alignment: .leading)
                    Spacer()
                    Button{
                        print("Settings button1 was pressed")
                    } label: {
                        Text("2400 ML")
                            .foregroundColor(Color( red: 60/255, green: 60/255, blue:67/255))
                        Image(systemName: "chevron.forward")
                                .foregroundColor(Color( red: 60/255, green: 60/255, blue:67/255))
                        }
                    .frame(height: 14)
                }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)
                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
                //2nd line
                HStack{
                    Text("Your goal")
                        .font(.system(size: 17))
                        .frame(width: 250, height: 22, alignment: .leading)
                    Spacer()
                    Button{
                        print("Settings button1 was pressed")
                    } label: {
                        Image(systemName: "chevron.forward")
                                .foregroundColor(Color( red: 60/255, green: 60/255, blue:67/255))
                        }
                    .frame(height: 14)
                    }
                .padding(.bottom, 11)
                Rectangle()
                    .fill(Color( red: 198/255, green: 198/255, blue:200/255))
                    .opacity(0.2)
                    .frame(width: .infinity, height: 1)
                    .padding(.bottom, 23)
                //3rd line
                HStack{
                    Text("Reminder")
                        .font(.system(size: 17))
                        .frame(width: 250, height: 22, alignment: .leading)
                    Spacer()

                    Button{
                        print("Settings button1 was pressed")
                    } label: {
                            Image(systemName: "chevron.forward")
                                .foregroundColor(Color( red: 60/255, green: 60/255, blue:67/255))
                        }
                    .frame(height: 14)
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

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
