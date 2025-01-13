//
//  ContentView.swift
//  Sum of numbers
//
//  Created by Yuk Yeung Chao on 2025-01-13.
//


import SwiftUI
struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(2)) {
                   
                   MultiplyView()
                       .tabItem {
                           Image(systemName: "multiply")
                           
                       }
                       .tag(1)
                   
                  SumView()
                       .tabItem {
                           Image(systemName: "plus")
                           
                       }
                       .tag(2)
        
                   DividingView()
                       .tabItem {
                           Image(systemName: "divide")
                           
                       }
                       .tag(3)
            
            
                  MinusView()
                       .tabItem {
                       Image(systemName: "minus")
                       
                }
                      .tag(4)
        }
        .preferredColorScheme(.dark)
        .tint(.orange)
    }
}

#Preview {
    LandingView()
}

