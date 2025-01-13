//
//  MainView.swift
//  CalculatingApp
//
//  Created by Hannu Packalen on 2025-01-13.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            
            AdditionView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Addition")
                }
                .tag(1)
            
            SubtractionView()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Subtraction")
                }
                .tag(2)
            
            MultiplicationView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Multiplication")
                }
                .tag(3)
            DivisionView()
                .tabItem{
                    Image(systemName: "Division")
                    Text("Division")
                }
                .tag(4)
        }
    }
}

#Preview {
    MainView()
}
