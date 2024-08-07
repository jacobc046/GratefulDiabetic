@_private(sourceFile: "SearchJournals.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SearchJournals {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/SearchJournals.swift", line: 15)
        ScrollView {
            Text("\(manager.context.registeredObjects)")
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.SearchJournals
#Preview {
    SearchJournals()
        .environmentObject(CoreDataManager.instance)
}



