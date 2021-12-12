//
//  Screen4.swift
//  HW6
//
//  Created by Aiganym Moldagulova on 12/12/2021.
//

import SwiftUI

struct Screen4: View {
    var body: some View {
        TabView{
            Main()
                .tabItem{
                    Image(systemName: "house.circle")
                    Text("Main")
                }
            Settings()
                .tabItem{
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
            
            History()
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("History")
                }
        }
        .accentColor(.blue)
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4()
    }
}
