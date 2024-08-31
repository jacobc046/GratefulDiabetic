//
//  FeaturedRecipesView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/27/24.
//

import SwiftUI

struct FeaturedRecipesView: View {
    @FetchRequest(entity: FeaturedRecipeEntity.entity(), sortDescriptors: CoreDataManager.instance.getRecipeSortDescriptors()) var featuredRecipes: FetchedResults<FeaturedRecipeEntity>
    @State var searchText: String = ""
    
    var body: some View {
        List {
            ForEach(filteredRecipes) { recipe in
                NavigationLink {
                    FeaturedRecipeDetails(recipe: recipe)
                } label: {
                    FeaturedRecipeThumbnail(recipe: recipe)
                        .frame(height: 100)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .listStyle(.grouped)
    }
    var filteredRecipes: [FeaturedRecipeEntity] {
        let featuredRecpiesList = featuredRecipes.map { $0 } as [FeaturedRecipeEntity]
        if searchText.isEmpty {
            return featuredRecpiesList
        } else {
            return featuredRecpiesList.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
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
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 90)

            Text(recipe.name ?? "")
        }
    }
}

#Preview {
    FeaturedRecipesView()
}
