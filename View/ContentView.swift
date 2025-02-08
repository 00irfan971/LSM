//
//  ContentView.swift
//  LSM
//
//  Created by Irfan on 06/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
  
            TabView(){
                
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Today")
                }
                
                HomeView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                    }
                
                ProfileView(Selected: 0)
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("You")
                    }
            }.tint(Color.white)
            .onAppear {
                UITabBar.appearance().unselectedItemTintColor = UIColor(white: 1.0, alpha: 0.5)
            }
    }
}


#Preview {
    ContentView()
}
