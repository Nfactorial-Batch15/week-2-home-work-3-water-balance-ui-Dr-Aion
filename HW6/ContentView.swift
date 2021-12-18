//
//  ContentView.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI
var screen1Title = "What's your goal?"
var title1 = "Goal Number One"
var title2 = "Goal Number Two"
var title3 = "Goal Number Three"
var title4 = "Goal Number Four"
var buttonText = "Next"


struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Header()
            Title(mainTitle: screen1Title)
            GoalsView()
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

struct Header: View{
    var body: some View{
        Text("WATER BALANCE")
            .foregroundColor(Color( red: 5/255, green: 165/255, blue:239/255))
            .font(.system(size: 24))
            .italic()
            .fontWeight(.black)
            .frame(maxWidth: .infinity)
            .padding(.top, 108)
    }
}

struct Title: View{
    var mainTitle: String = ""
    var body: some View{
        Text(mainTitle)
            .foregroundColor(Color( red: 47/255, green: 47/255, blue:51/255))
            .font(.system(size: 36))
            .fontWeight(.semibold)
            .padding(.top, 62)
    }
}

struct GoalsView: View{
    @State var item1selected: Bool = true
    @State var item2selected: Bool = false
    @State var item3selected: Bool = false
    @State var item4selected: Bool = false

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                .frame(height: 330)
            VStack(spacing: 14){
                ChoiceGoalCustom(title: title1, image: Image("Picker"), selected: self.$item1selected)
                ChoiceGoalCustom(title: title2, image: Image("Picker1"), selected: self.$item2selected)
                ChoiceGoalCustom(title: title3, image: Image("Picker1"), selected: self.$item3selected)
                ChoiceGoalCustom(title: title4, image: Image("Picker1"), selected: self.$item4selected)
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)

        }
        .frame(height: 330)
    }
}
struct ChoiceGoalCustom: View{
    var title: String = ""
    var image: Image = Image("Picker1")
    @Binding var selected: Bool
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
            HStack{
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size:16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.selected ? "Picker" : "Picker1")
            }.padding(.horizontal, 24)
        }.onTapGesture {
            self.selected.toggle()
        }
    }
}

struct CustomButton: View{
    var buttonText: String = ""
    var body: some View{
        Button{
            print("Next button was pressed")
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))

                Text(buttonText)
                    .foregroundColor(.white)
            }
            .frame(height: 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
