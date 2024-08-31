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
        TextField("Search by name, or text", text: $searchText)
            .padding()
            .textFieldStyle(.roundedBorder)
        List {
            ForEach(recipes) { recipe in
                NavigationLink {
                    RecipeEditor(recipe: recipe)
                } label: {
                    HStack {
                        Text(recipe.name ?? "")
                    }
                    .frame(height: 50)
                    .onChange(of: searchText) {
                        if searchText.isEmpty {
                            recipes.nsPredicate = NSPredicate(value: true)
                        } else {
                            recipes.nsPredicate = NSPredicate(format: "name CONTAINS[cd] %@ OR text contains %@", searchText, searchText)
                        }
                    }
                }
            }
        }
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    }
}

#Preview {
    SearchRecipes()
}
