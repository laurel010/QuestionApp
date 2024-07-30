//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favourite season?")
                    .font(.title)
                    .fontWeight(.medium)
                Button("Spring 🌼") {
                    //action here
                    answer = "🌼"
                }.buttonStyle(.borderedProminent)
                    .tint(.black)
                
                Button("Summer ☀️") {
                    answer = "☀️"
                }.buttonStyle(.borderedProminent)
                    .tint(.black)
                
                Button("Autumn 🍂") {
                    answer = "🍂"
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                
                Button("Winter ❄️") {
                    answer = "❄️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                
                Text(answer)
                
                NavigationLink(destination: SpringView()) {
                    Text("Go to Questions about Spring")}
                
                NavigationLink(destination: SummerView()) {
                        Text("Go to Questions about Summer")
                }
                NavigationLink(destination: AutumnView()) {
                    Text("Go to Questions about Autumn")}
               
                NavigationLink(destination: WinterView()) {
                    Text("Go to Questions about Winter")}

            }//closes VStack
            }//closes navigation stack
        }//closes bosy
    }//closes struct

    
    
    
    
    
#Preview {
    ContentView()
}// closes preview
