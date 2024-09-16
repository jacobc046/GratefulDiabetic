@_private(sourceFile: "Background.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Background {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Background.swift", line: 12)
        LinearGradient(colors: [.primary1, .primary1.opacity(__designTimeFloat("#13626.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.5))],
                       startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Background
#Preview {
    Background()
}



