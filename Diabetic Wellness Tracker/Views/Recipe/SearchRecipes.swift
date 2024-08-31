//
//  SearchRecipes.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/30/24.
//

import SwiftUI

struct SearchRecipes: View {
    
    let manager = CoreDataManager.instance
    @State var searchText: String = ""
    @FetchRequest(entity: RecipeEntity.entity(), sortDescriptors: CoreDataManager.instance.getRecipeSortDescriptors(), predicate: nil) var recipes: FetchedResults<RecipeEntity>
    
    var body: some View {
        List {
            ForEach(filteredRecipes) { recipe in
                NavigationLink {
                    RecipeEditor(recipe: recipe)
                } label: {
                    HStack {
                        Text(recipe.name ?? "")
                    }
                    .frame(height: 50)
//                    .onChange(of: searchText) {
//                        if searchText.isEmpty {
//                            recipes.nsPredicate = NSPredicate(value: true)
//                        } else {
//                            recipes.nsPredicate = NSPredicate(format: "name CONTAINS[cd] %@ OR text contains %@", searchText, searchText)
//                        }
//                    }
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    }
    
    var filteredRecipes: [RecipeEntity] {
        let recipesList = recipes.map { $0 }
        if searchText.isEmpty {
            return recipesList
        } else {
            return recipesList.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

#Preview {
    SearchRecipes()
}
