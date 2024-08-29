@_private(sourceFile: "FeaturedRecipeDetails.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CoreDataManager {
    @_dynamicReplacement(for: sampleFeaturedRecipe) private var __preview__sampleFeaturedRecipe: FeaturedRecipeEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipeDetails.swift", line: 60)
        let newFeaturedRecipe = FeaturedRecipeEntity(context: self.context)
        newFeaturedRecipe.name = __designTimeString("#6784.[4].[0].property.[0].[1].[0]", fallback: "Grilled Cheese")
        newFeaturedRecipe.image = __designTimeString("#6784.[4].[0].property.[0].[2].[0]", fallback: "https://natashaskitchen.com/wp-content/uploads/2021/08/Grilled-Cheese-Sandwich-3.jpg")
        newFeaturedRecipe.ingredients = "• Bread\n• Butter\n• Cheese"
        newFeaturedRecipe.steps = "• Butter the bread\n• Heat skillet\n• Add bread and cheese\n• Brown the bread until golden"
        newFeaturedRecipe.notes = __designTimeString("#6784.[4].[0].property.[0].[5].[0]", fallback: "Use low head, butter generously, and use thick bread.")
        return newFeaturedRecipe
    
#sourceLocation()
    }
}

extension ImageBackground {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipeDetails.swift", line: 39)
        
        if imageURL != URL(string: "") {
            AsyncImage(url: imageURL) { image in
                image.image?
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
        } else {
            Background()
        }
    
#sourceLocation()
    }
}

extension FeaturedRecipeDetails {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipeDetails.swift", line: 15)
        NavigationStack {
            ZStack {
                //background
                ImageBackground(imageURL: URL(string: recipe.image ?? __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))!)
                    .blur(radius: __designTimeInteger("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 10))
                
                ScrollView {
                    ComponentView(heading: __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Ingredients"), text: recipe.ingredients ?? __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]", fallback: ""))
                    ComponentView(heading: __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "Steps"), text: recipe.steps ?? __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]", fallback: ""))
                    ComponentView(heading: __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value", fallback: "Notes"), text: recipe.notes ?? __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0]", fallback: ""))
                }
                .padding()
            }
            .navigationTitle(recipe.name ?? __designTimeString("#6784.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: ""))
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.FeaturedRecipeDetails
import struct Diabetic_Wellness_Tracker.ImageBackground
#Preview {
    FeaturedRecipeDetails(recipe: CoreDataManager.instance.sampleFeaturedRecipe)
}



