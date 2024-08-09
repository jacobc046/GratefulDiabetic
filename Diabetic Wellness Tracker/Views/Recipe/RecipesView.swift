//
//  RecipesView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipesView: View {
    
    @EnvironmentObject var manager: CoreDataManager
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
                            RecipeEditor(recipe: recipe)
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
                                EmptyView()
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    RecipesView()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}
