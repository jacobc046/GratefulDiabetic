//
//  ContentView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI
import CoreData

enum SelectedTab: String {
    case home
    case journals
    case recipes
    case featured
}

struct ContentView: View {
    
    @StateObject var manager = CoreDataManager.instance
    @State private var selectedTab: SelectedTab = .home
    @State private var showJournalEditor: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                switch selectedTab {
                    case .home:
                        Home()
                    case .journals:
                        Journals()
                    case .recipes:
                        RecipesView()
                    case .featured:
                        Featured()
                }
                
                //tab bar
                HStack(spacing: 10) {
                    TabBarIcon(selectedTab: $selectedTab, tab: .home, imageName: "house")
                    TabBarIcon(selectedTab: $selectedTab, tab: .journals, imageName: "text.book.closed")
                    
                    Menu {
                        NavigationLink("New Journal") {
                            JournalEditor(journal: nil)
                        }
                        NavigationLink("New Recipe") {
                            RecipeEditor(recipe: nil)
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.primary1, Color(UIColor.tertiarySystemBackground)]), startPoint: .topTrailing, endPoint: .bottomLeading))
                    }
                    
                    TabBarIcon(selectedTab: $selectedTab, tab: .recipes, imageName: "fork.knife.circle")
                    TabBarIcon(selectedTab: $selectedTab, tab: .featured, imageName: "star.circle")
                }
                .frame(maxWidth: .infinity, minHeight: 65)
                .background(.secondary1)
                .ignoresSafeArea()
            }
        }
    }
    
    func createNewRecipe() -> RecipeEntity {
        let newRecipe = RecipeEntity(context: manager.context)
        newRecipe.name = ""
        newRecipe.ingredients = "• "
        newRecipe.steps = "• "
        newRecipe.notes = ""
        return newRecipe
    }
}


struct TabBarIcon: View {
    @Binding var selectedTab: SelectedTab
    let tab: SelectedTab
    let imageName: String
    
    var body: some View {
        Button {
            selectedTab = tab
        } label: {
            VStack {
                Image(systemName: selectedTab == tab ? imageName + ".fill" : imageName)
                    .imageScale(.large)
                Text(tab.rawValue.capitalized)
            }
            .foregroundStyle(Color.white)
        }
        .frame(width: 70)
    }
}

#Preview {
    ContentView()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}
