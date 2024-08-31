@_private(sourceFile: "SearchRecipes.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SearchRecipes {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/SearchRecipes.swift", line: 17)
        TextField(__designTimeString("#4024.[1].[3].property.[0].[0].arg[0].value", fallback: "Search by name, or text"), text: $searchText)
            .padding()
            .textFieldStyle(.roundedBorder)
        List {
            ForEach(recipes) { recipe in
                NavigationLink {
                    RecipeEditor(recipe: recipe)
                } label: {
                    HStack {
                        Text(recipe.name ?? __designTimeString("#4024.[1].[3].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                    }
                    .frame(height: __designTimeInteger("#4024.[1].[3].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 50))
                    .onChange(of: searchText) {
                        if searchText.isEmpty {
                            recipes.nsPredicate = NSPredicate(value: __designTimeBoolean("#4024.[1].[3].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[1].value.[0].[0].[0].[0]", fallback: true))
                        } else {
                            recipes.nsPredicate = NSPredicate(format: __designTimeString("#4024.[1].[3].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[1].value.[0].[1].[0].[0]", fallback: "name CONTAINS[cd] %@ OR text contains %@"), searchText, searchText)
                        }
                    }
                }
            }
        }
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.SearchRecipes
#Preview {
    SearchRecipes()
}



