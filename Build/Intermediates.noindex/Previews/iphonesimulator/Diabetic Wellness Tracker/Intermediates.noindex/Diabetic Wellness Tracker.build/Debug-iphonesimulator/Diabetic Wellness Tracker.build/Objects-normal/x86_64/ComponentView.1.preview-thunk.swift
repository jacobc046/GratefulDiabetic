@_private(sourceFile: "ComponentView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ComponentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/ComponentView.swift", line: 15)
        VStack(alignment: .leading) {
            Text(heading)
                .font(.title2)
            Text(text)
        }
        .padding()
        .frame(width: __designTimeInteger("#13281.[1].[2].property.[0].[0].modifier[1].arg[0].value", fallback: 350), alignment: .topLeading)
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#13281.[1].[2].property.[0].[0].modifier[3].arg[0].value.arg[0].value", fallback: 10)))
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.ComponentView
#Preview {
    ComponentView(heading: "Heading", text: "Text")
}



