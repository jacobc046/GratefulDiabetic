@_private(sourceFile: "FeaturedRecipesView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension FeaturedRecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipesView.swift", line: 41)
        HStack {
            AsyncImage(url: URL(string: recipe.image ?? __designTimeString("#10057.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value.[0]", fallback: ""))) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(height: __designTimeInteger("#10057.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 90))

            Text(recipe.name ?? __designTimeString("#10057.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0]", fallback: ""))
        }
    
#sourceLocation()
    }
}

extension FeaturedRecipesView {
    @_dynamicReplacement(for: filteredRecipes) private var __preview__filteredRecipes: [FeaturedRecipeEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipesView.swift", line: 29)
        let featuredRecpiesList = featuredRecipes.map { $0 } as [FeaturedRecipeEntity]
        if searchText.isEmpty {
            return featuredRecpiesList
        } else {
            return featuredRecpiesList.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
        }
    
#sourceLocation()
    }
}

extension FeaturedRecipesView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/FeaturedRecipesView.swift", line: 15)
        List {
            ForEach(filteredRecipes) { recipe in
                NavigationLink {
                    FeaturedRecipeDetails(recipe: recipe)
                } label: {
                    FeaturedRecipeThumbnail(recipe: recipe)
                        .frame(height: __designTimeInteger("#10057.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 100))
                }
            }
        }
        .scrollContentBackground(.hidden)
        .listStyle(.grouped)
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.FeaturedRecipesView
import struct Diabetic_Wellness_Tracker.FeaturedRecipeThumbnail
#Preview {
    FeaturedRecipesView()
}



