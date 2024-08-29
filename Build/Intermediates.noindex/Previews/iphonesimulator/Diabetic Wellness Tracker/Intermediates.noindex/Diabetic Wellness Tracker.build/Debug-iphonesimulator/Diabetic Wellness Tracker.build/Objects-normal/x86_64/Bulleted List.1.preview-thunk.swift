@_private(sourceFile: "Bulleted List.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Bulleted_List {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/Bulleted List.swift", line: 32)
        TextField(__designTimeString("#1013.[1].[5].property.[0].[0].arg[0].value", fallback: "Title"), text: $title)
            .textInputAutocapitalization(.words)
            .textFieldStyle(.roundedBorder)
            .font(.title)
            .padding([.leading, .trailing, .bottom], __designTimeInteger("#1013.[1].[5].property.[0].[0].modifier[3].arg[1].value", fallback: 15))
        
        Form {
            Section(__designTimeString("#1013.[1].[5].property.[0].[1].arg[0].value.[0].arg[0].value", fallback: "Ingredients")) {
                TextEditor(text: $ingredients)
                    .onKeyPress(.return) {
                        ingredients += __designTimeString("#1013.[1].[5].property.[0].[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                        return .ignored
                }
            }
            
            Section(__designTimeString("#1013.[1].[5].property.[0].[1].arg[0].value.[1].arg[0].value", fallback: "Steps")) {
                TextEditor(text: $steps)
                    .onKeyPress(.return) {
                        steps += __designTimeString("#1013.[1].[5].property.[0].[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                        return .ignored
                    }
                    .frame(height: __designTimeInteger("#1013.[1].[5].property.[0].[1].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value", fallback: 150))
            }
            Section(__designTimeString("#1013.[1].[5].property.[0].[1].arg[0].value.[2].arg[0].value", fallback: "Notes")) {
                TextEditor(text: $notes)
            }
        }
        .formStyle(.columns)
        .padding(.leading)
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Bulleted_List
#Preview {
    Bulleted_List(recipe: CoreDataManager.instance.sampleRecipe)
}



