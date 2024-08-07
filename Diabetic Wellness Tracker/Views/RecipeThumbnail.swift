//
//  RecipeThumbnail.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI

struct RecipeThumbnail: View {
    @EnvironmentObject var manager: CoreDataManager
    let recipe: RecipeEntity
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.white)
            
            VStack {
                HStack(alignment: .top ,spacing: 50) {
                    VStack {
                        Text(recipe.name ?? "Title")
                            .font(.title)
                        if let ingredients = recipe.ingredientsList as? Set<IngredientEntity> {
                            ForEach(Array(ingredients), id: \.self) { ingredient in
                                HStack {
                                    Text(ingredient.name ?? "")
                                    Text(ingredient.quantity ?? "")
                                }
                            }
                        }
                        
                    }
                    AsyncImage(url: URL(string: recipe.image ?? "")) { image in
                        image.image?.resizable()
                            .scaledToFit()
                            .frame(width: 125)
                    }
                }
                
                Menu {
                    
                    Button(role: .destructive) {
                        
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                    Button {
                        
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                } label: {
                    Image(systemName: "ellipsis")
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            }
            .foregroundStyle(.black)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding()
    }
}

#Preview {
    RecipeThumbnail(recipe: CoreDataManager.instance.sampleRecipe)
}

extension CoreDataManager {
    var sampleRecipe: RecipeEntity {
        let context = CoreDataManager.instance.context
        
        let newIngredient1 = IngredientEntity(context: context)
        newIngredient1.name = "Strawberries"
        newIngredient1.quantity = "1"
        
        let newIngredient2 = IngredientEntity(context: context)
        newIngredient2.name = "Blueberries"
        newIngredient2.quantity = "2"
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = "Smoothie"
        newRecipe.image = "https://www.jessicagavin.com/wp-content/uploads/2020/07/berry-smoothie-8-1200-500x500.jpg"
        newRecipe.ingredientsList = [newIngredient1, newIngredient2]
        
        return newRecipe
    }
}
