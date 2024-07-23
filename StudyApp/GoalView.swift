//
//  GoalView.swift
//  StudyApp
//
//  Created by Dane Camacho on 7/22/24.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("This is the Goal View")
            }
            .navigationTitle("Study Goal")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    GoalView()
}
