//
//  FeaturedRecipeDetails.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/28/24.
//

import SwiftUI

struct FeaturedRecipeDetails: View {
    
    let recipe: FeaturedRecipeEntity
    
    var body: some View {
        NavigationStack {
            ZStack {
                //background
                ImageBackground(imageURL: URL(string: recipe.image ?? "")!)
                    .blur(radius: 10)
                
                ScrollView {
                    ComponentView(heading: "Ingredients", text: recipe.ingredients ?? "")
                    ComponentView(heading: "Steps", text: recipe.steps ?? "")
                    ComponentView(heading: "Notes", text: recipe.notes ?? "")
                }
                .padding()
            }
            .navigationTitle(recipe.name ?? "")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
        }
    }
}

struct ImageBackground: View {
    let imageURL: URL
    var body: some View {
        
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
    }
}


#Preview {
    FeaturedRecipeDetails(recipe: CoreDataManager.instance.sampleFeaturedRecipe)
}

extension CoreDataManager {
    var sampleFeaturedRecipe: FeaturedRecipeEntity {
        let newFeaturedRecipe = FeaturedRecipeEntity(context: self.context)
        newFeaturedRecipe.name = "Grilled Cheese"
        newFeaturedRecipe.image = "https://natashaskitchen.com/wp-content/uploads/2021/08/Grilled-Cheese-Sandwich-3.jpg"
        newFeaturedRecipe.ingredients = "• Bread\n• Butter\n• Cheese"
        newFeaturedRecipe.steps = "• Butter the bread\n• Heat skillet\n• Add bread and cheese\n• Brown the bread until golden"
        newFeaturedRecipe.notes = "Use low head, butter generously, and use thick bread."
        return newFeaturedRecipe
    }
}
