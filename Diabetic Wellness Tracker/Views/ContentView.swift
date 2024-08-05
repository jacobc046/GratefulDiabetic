//
//  ContentView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI

enum SelectedTab: String {
    case home
    case journal
    case myRecipes
    case featuredRecipes
}

struct ContentView: View {
    
    @State var selectedTab: SelectedTab
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: selectedTab == .home ? "house" : "house.fill")
                }
        }
    }
}

#Preview {
    ContentView(selectedTab: .home)
}
