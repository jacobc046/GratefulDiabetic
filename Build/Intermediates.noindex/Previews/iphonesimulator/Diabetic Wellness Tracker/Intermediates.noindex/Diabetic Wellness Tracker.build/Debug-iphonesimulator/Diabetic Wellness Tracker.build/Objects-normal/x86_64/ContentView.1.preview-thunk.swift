@_private(sourceFile: "ContentView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ContentView.swift", line: 22)
        TabView {
            Home()
                .tabItem {
                    Label(__designTimeString("#27880.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Home"), systemImage: selectedTab == .home ? __designTimeString("#27880.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.then", fallback: "home") : __designTimeString("#27880.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.else", fallback: "home."))
                }
        }
    
#sourceLocation()
    }
}

import enum Diabetic_Wellness_Tracker.SelectedTab
import struct Diabetic_Wellness_Tracker.ContentView
#Preview {
    ContentView(selectedTab: .home)
}



