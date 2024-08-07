@_private(sourceFile: "ContentView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ContentView.swift", line: 80)
        __designTimeSelection(Button {
            selectedTab = tab
        } label: {
            __designTimeSelection(VStack {
                __designTimeSelection(Image(systemName: selectedTab == tab ? imageName + __designTimeString("#5260.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.then.[0]", fallback: ".fill") : __designTimeSelection(imageName, "#5260.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.else"))
                    .imageScale(.large), "#5260.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeSelection(tab.rawValue.capitalized, "#5260.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value")), "#5260.[4].[3].property.[0].[0].arg[1].value.[0].arg[0].value.[1]")
            }
            .foregroundStyle(__designTimeSelection(Color.white, "#5260.[4].[3].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value")), "#5260.[4].[3].property.[0].[0].arg[1].value.[0]")
        }
        .frame(width: __designTimeInteger("#5260.[4].[3].property.[0].[0].modifier[0].arg[0].value", fallback: 70)), "#5260.[4].[3].property.[0].[0]")
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ContentView.swift", line: 24)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(VStack(spacing: __designTimeInteger("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                switch selectedTab {
                    case .home:
                        __designTimeSelection(Home()
                            .environment(\.managedObjectContext, __designTimeSelection(context, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[1].value")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                    case .journals:
                        __designTimeSelection(Journals()
                            .environment(\.managedObjectContext, __designTimeSelection(PersistenceController.shared.container.viewContext, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].modifier[0].arg[1].value")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                    case .recipes:
                        __designTimeSelection(EmptyView(), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[2].[0]")
                    case .featured:
                        __designTimeSelection(EmptyView(), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[3].[0]")
                }
                
                //tab bar
                __designTimeSelection(HStack(spacing: __designTimeInteger("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: 10)) {
                    __designTimeSelection(TabBarIcon(selectedTab: __designTimeSelection($selectedTab, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value"), tab: .home, imageName: __designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[2].value", fallback: "house")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0]")
                    __designTimeSelection(TabBarIcon(selectedTab: __designTimeSelection($selectedTab, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].arg[0].value"), tab: .journals, imageName: __designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].arg[2].value", fallback: "text.book.closed")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1]")
                    
                    __designTimeSelection(Menu {
                        __designTimeSelection(NavigationLink(__designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "New Journal")) {
                            __designTimeSelection(EmptyView(), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[0].arg[1].value.[0]")
                        }, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[0]")
                        __designTimeSelection(NavigationLink(__designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "New Recipe")) {
                            __designTimeSelection(EmptyView(), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[1].arg[1].value.[0]")
                        }, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[0].value.[1]")
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "plus.circle.fill"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50))
                            .foregroundStyle(__designTimeSelection(LinearGradient(gradient: __designTimeSelection(Gradient(colors: [.primary1, .white]), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value"), startPoint: .topTrailing, endPoint: .bottomLeading), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0].modifier[3].arg[0].value")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2].arg[1].value.[0]")
                    }, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[2]")
                    
                    __designTimeSelection(TabBarIcon(selectedTab: __designTimeSelection($selectedTab, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].arg[0].value"), tab: .recipes, imageName: __designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3].arg[2].value", fallback: "fork.knife.circle")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[3]")
                    __designTimeSelection(TabBarIcon(selectedTab: __designTimeSelection($selectedTab, "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[0].value"), tab: .featured, imageName: __designTimeString("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4].arg[2].value", fallback: "star.circle")), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[4]")
                }
                .frame(maxWidth: .infinity, minHeight: __designTimeInteger("#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[1].value", fallback: 65))
                .background(.secondary1)
                .ignoresSafeArea(), "#5260.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
            }, "#5260.[3].[2].property.[0].[0].arg[0].value.[0]")
        }
        .onAppear {
            __designTimeSelection(print("\(__designTimeSelection(context, "#5260.[3].[2].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[1].value.arg[0].value"))"), "#5260.[3].[2].property.[0].[0].modifier[0].arg[0].value.[0]")
        }, "#5260.[3].[2].property.[0].[0]")
    
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



