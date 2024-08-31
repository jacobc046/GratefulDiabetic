@_private(sourceFile: "ContentView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension TabBarIcon {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ContentView.swift", line: 76)
        Button {
            selectedTab = tab
        } label: {
            VStack {
                Image(systemName: selectedTab == tab ? imageName + __designTimeString("#1792.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.then.[0]", fallback: ".fill") : imageName)
                    .imageScale(.large)
                Text(tab.rawValue.capitalized)
            }
            .foregroundStyle(Color.white)
        }
        .frame(width: __designTimeInteger("#1792.[4].[3].property.[0].[0].modifier[0].arg[0].value", fallback: 70))
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ContentView.swift", line: 25)
        NavigationStack {
            VStack(spacing: __designTimeInteger("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
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
                HStack(spacing: __designTimeInteger("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: 10)) {
                    TabBarIcon(selectedTab: $selectedTab, tab: .home, imageName: __designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[2].value", fallback: "house"))
                    TabBarIcon(selectedTab: $selectedTab, tab: .journals, imageName: __designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].arg[2].value", fallback: "text.book.closed"))
                    
                    Menu {
                        NavigationLink(__designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "New Journal")) {
                            JournalEditor(journal: nil)
                        }
                        NavigationLink(__designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "New Recipe")) {
                            RecipeEditor(recipe: nil)
                        }
                    } label: {
                        Image(systemName: __designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "plus.circle.fill"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.primary1, Color(UIColor.tertiarySystemBackground)]), startPoint: .topTrailing, endPoint: .bottomLeading))
                    }
                    
                    TabBarIcon(selectedTab: $selectedTab, tab: .recipes, imageName: __designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].arg[2].value", fallback: "fork.knife.circle"))
                    TabBarIcon(selectedTab: $selectedTab, tab: .featured, imageName: __designTimeString("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[2].value", fallback: "star.circle"))
                }
                .frame(maxWidth: .infinity, minHeight: __designTimeInteger("#1792.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 65))
                .background(.secondary1)
                .ignoresSafeArea()
            }
        }
    
#sourceLocation()
    }
}

import enum Diabetic_Wellness_Tracker.SelectedTab
import struct Diabetic_Wellness_Tracker.ContentView
import struct Diabetic_Wellness_Tracker.TabBarIcon
#Preview {
    ContentView()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



