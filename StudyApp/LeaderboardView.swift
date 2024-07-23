//
//  LeaderboardView.swift
//  StudyApp
//
//  Created by Dane Camacho on 7/22/24.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        
        NavigationView{
            List{
                //ForEach() probably?
                Text("Person1")
                Text("Person2")
                Text("Person3")
                
            }
            .navigationTitle("Leaderboard")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

//maybe?
//class UserManager : ObservableObject{}

#Preview {
    LeaderboardView()
}
