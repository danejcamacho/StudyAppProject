//
//  TimerView.swift
//  StudyApp
//
//  Created by Dane Camacho on 7/22/24.
//

import SwiftUI

struct TimerView: View {

    @State var timerMode: Bool = false
    
    
    
    var body: some View {
        

        NavigationView{
            VStack(alignment: .center){
                VStack{
                    HStack(){
                        Spacer()
                        Toggle(isOn: $timerMode){
                            Text("Stopwatch Mode")
                        }
                        Spacer()
                        Text("Timer Mode")
                        Spacer()
                    }
                    
                    if timerMode == false {
                        StopwatchView()
                    } else {
                        CountDownView()
                    }
                    
                    
                    
                }
            }
            .navigationTitle("Timer")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}


struct StopwatchView: View {

    
    @ObservedObject var stopWatch = Stop_Watch()
    
    var body: some View{

        let minutes = String(format: "%02d", stopWatch.counter / 60)
        let seconds = String(format: "%02d", stopWatch.counter % 60)
        let union = minutes + " : " + seconds
        
        ZStack {
            Color.white
            VStack {
                HStack {
                    if !stopWatch.isTimerRunning {
                        Button("Start") { stopWatch.start() }
                            .buttonStyle(.borderedProminent)
                    } else {
                        Button("Stop") { self.stopWatch.stop() }
                    }

                    Button("Reset") { self.stopWatch.reset() }
                }

                Text("\(union)")
                    .font(.custom("", size: 90))
                Spacer()
            }
        }
    }
        
        }
    
    class Stop_Watch: ObservableObject {
        
        @Published var counter: Int = 0
        @Published var isTimerRunning = false
        var timer = Timer()
        
        
        func start() {
            self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                self.counter += 1
            }
            isTimerRunning = true
        }
        func stop() {
            self.timer.invalidate()
            isTimerRunning = false
        }
        func reset() {
            self.counter = 0
            self.timer.invalidate()
            isTimerRunning = false
        }
    }
    

struct CountDownView: View {
    var body: some View{
        Text("This is the count down")
    }
}

#Preview {
    TimerView()
}
