@_private(sourceFile: "RecipeDetails.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeDetails.swift", line: 55)
        __designTimeSelection(VStack(alignment: .leading) {
            __designTimeSelection(Text(__designTimeSelection(heading, "#1496.[2].[2].property.[0].[0].arg[1].value.[0].arg[0].value"))
                .font(.title2), "#1496.[2].[2].property.[0].[0].arg[1].value.[0]")
            __designTimeSelection(Text(__designTimeSelection(text, "#1496.[2].[2].property.[0].[0].arg[1].value.[1].arg[0].value")), "#1496.[2].[2].property.[0].[0].arg[1].value.[1]")
        }
        .padding()
        .frame(width: __designTimeInteger("#1496.[2].[2].property.[0].[0].modifier[1].arg[0].value", fallback: 350), alignment: .topLeading)
        .background(.regularMaterial)
        .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#1496.[2].[2].property.[0].[0].modifier[3].arg[0].value.arg[0].value", fallback: 10)), "#1496.[2].[2].property.[0].[0].modifier[3].arg[0].value")), "#1496.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

extension RecipeDetails {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeDetails.swift", line: 16)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(ZStack {
                __designTimeSelection(Background(), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(ScrollView {
                    __designTimeSelection(VStack(alignment: .leading) {
                        //recipe image
                        __designTimeSelection(ComponentView(heading: __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Ingredients"), text: recipe.ingredients ?? __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]", fallback: "")), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                        
                        __designTimeSelection(ComponentView(heading: __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Steps"), text: recipe.steps ?? __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0]", fallback: "")), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1]")
                        
                        __designTimeSelection(ComponentView(heading: __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Notes"), text: recipe.notes ?? __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0]", fallback: "")), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[2]")
                    }
                    .padding()
                    
                .navigationTitle(recipe.name ?? __designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: ""))
                .navigationBarTitleDisplayMode(.large), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }, "#1496.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbar {
                __designTimeSelection(ToolbarItem {
                    __designTimeSelection(Button(__designTimeString("#1496.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Edit")) {
                        __designTimeSelection(isEditing.toggle(), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    }
                    .foregroundStyle(.primary), "#1496.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value.[0]")
                }, "#1496.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0]")
            }, "#1496.[1].[2].property.[0].[0].arg[0].value.[0]")
        }
        .navigationDestination(isPresented: __designTimeSelection($isEditing, "#1496.[1].[2].property.[0].[0].modifier[0].arg[0].value"), destination: { __designTimeSelection(RecipeEditor(recipe: __designTimeSelection(recipe, "#1496.[1].[2].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value")), "#1496.[1].[2].property.[0].[0].modifier[0].arg[1].value.[0]") }), "#1496.[1].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeDetails
import struct Diabetic_Wellness_Tracker.ComponentView
#Preview {
    RecipeDetails(recipe: CoreDataManager.instance.sampleRecipe)
}



