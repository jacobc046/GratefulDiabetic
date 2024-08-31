//
//  RecipesView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipesView: View {
    
    @StateObject var manager = CoreDataManager.instance
    @FetchRequest(entity: RecipeEntity.entity(), sortDescriptors: CoreDataManager.instance.getRecipeSortDescriptors(), animation: .default) private var recipes: FetchedResults<RecipeEntity>
    
    
    var body: some View {
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
                    .navigationTitle("Recipes")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink {
                                SearchRecipes()
                            } label: {
                                Image(systemName: "magnifyingglass")
                            }
                            .foregroundStyle(.primary)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    RecipesView()
}
