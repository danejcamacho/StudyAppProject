//
//  ContentView.swift
//  StudyApp
//
//  Created by Dane Camacho on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @State var selection = 2
        TabView(selection: $selection){
            
            GoalView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Study Goal")
                }
                .tag(1)
            TimerView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Timer")
                }
                .tag(2)
            LeaderboardView()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Leaderboard")
                }
                .tag(3)
        }
    }
}

#Preview {
    ContentView()
}
