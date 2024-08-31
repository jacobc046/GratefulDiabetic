@_private(sourceFile: "RecipesView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension RecipesView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipesView.swift", line: 18)
        NavigationStack {
            ZStack {
                //background
                Background()
                
                //foreground
                ScrollView {
                    ForEach(recipes) { recipe in
                        NavigationLink(destination: {   
                            RecipeDetails(recipe: recipe)
                        }, label: {
                            RecipeThumbnail(recipe: recipe)
                        })
                    }
                    .navigationTitle(__designTimeString("#5181.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Recipes"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink {
                                SearchRecipes()
                            } label: {
                                Image(systemName: __designTimeString("#5181.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                            }
                            .foregroundStyle(.primary)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .navigationBarBackButtonHidden()
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipesView
#Preview {
    RecipesView()
}



