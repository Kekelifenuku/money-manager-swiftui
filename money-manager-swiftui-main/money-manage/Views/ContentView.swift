//
//  ContentView.swift
//  money-manage
//
//  Created by Kekeli on 2022-11-19.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        TabView(selection: $selection) {
            CardsScreen().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
            }.tag(1)
            
           Statistic().tabItem {
                VStack {
                    Image(systemName: "chart.bar.xaxis")
                    
                    Text("Statistic")
                    
                }
                
            }.tag(2)
            
            Profile().tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                
            }.tag(3)
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
