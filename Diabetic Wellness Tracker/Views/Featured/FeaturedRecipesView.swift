//
//  FeaturedRecipesView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/27/24.
//

import SwiftUI

struct FeaturedRecipesView: View {
    
    @FetchRequest(entity: FeaturedRecipeEntity.entity(), sortDescriptors: CoreDataManager.instance.getRecipeSortDescriptors()) var featuredRecipes: FetchedResults<FeaturedRecipeEntity>
    
    var body: some View {
        List {
            ForEach(featuredRecipes) { recipe in
                NavigationLink {
                    FeaturedRecipeDetails(recipe: recipe)
                } label: {
                    FeaturedRecipeThumbnail(recipe: recipe)
                        .frame(maxHeight: 100)
                }

            }
        }
    }
}

struct FeaturedRecipeThumbnail: View {
    let recipe: FeaturedRecipeEntity
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: recipe.image ?? "")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }

            Text(recipe.name ?? "")
        }
    }
}

#Preview {
    FeaturedRecipesView()
}
