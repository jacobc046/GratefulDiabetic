@_private(sourceFile: "TabBar.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TabBar {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/TabBar.swift", line: 13)
        if selectedView == 1 {
            Home()
        } else if selectedView == 2 {
            Journals()
        }
        HStack {
            Button {
                selectedView = __designTimeInteger("#71497.[1].[1].property.[0].[1].arg[0].value.[0].arg[0].value.[0].[0]", fallback: 1)
            } label: {
                Text(__designTimeString("#71497.[1].[1].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Home"))
            }
            
            Button {
                selectedView = __designTimeInteger("#71497.[1].[1].property.[0].[1].arg[0].value.[1].arg[0].value.[0].[0]", fallback: 2)
            } label: {
                Text(__designTimeString("#71497.[1].[1].property.[0].[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Home"))
            }
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.TabBar
#Preview {
    TabBar()
}



