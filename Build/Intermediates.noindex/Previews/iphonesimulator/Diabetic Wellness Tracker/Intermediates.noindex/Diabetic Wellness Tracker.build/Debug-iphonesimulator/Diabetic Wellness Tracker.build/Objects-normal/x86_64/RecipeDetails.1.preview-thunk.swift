@_private(sourceFile: "RecipeDetails.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension RecipeDetails {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeDetails.swift", line: 16)
        NavigationStack {
            ZStack {
                Background()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        //recipe image
                        ComponentView(heading: __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Ingredients"), text: recipe.ingredients ?? __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]", fallback: ""))
                        
                        ComponentView(heading: __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Steps"), text: recipe.steps ?? __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0]", fallback: ""))
                        
                        ComponentView(heading: __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Notes"), text: recipe.notes ?? __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0]", fallback: ""))
                    }
                    .padding()
                    
                .navigationTitle(recipe.name ?? __designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: ""))
                .navigationBarTitleDisplayMode(.large)
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbar {
                ToolbarItem {
                    Button(__designTimeString("#13447.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Edit")) {
                        isEditing.toggle()
                    }
                    .foregroundStyle(.primary)
                }
            }
        }
        .navigationDestination(isPresented: $isEditing, destination: { RecipeEditor(recipe: recipe) })
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeDetails
#Preview {
    RecipeDetails(recipe: CoreDataManager.instance.sampleRecipe)
}



