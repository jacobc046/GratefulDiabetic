//
//  RecipeThumbnail.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipeThumbnail: View {
    @EnvironmentObject var manager: CoreDataManager
    let recipe: RecipeEntity
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.white)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(recipe.name ?? "Title")
                            .font(.title)
                        if let ingredients = recipe.ingredientsList as? Set<IngredientEntity> {
                            ForEach(Array(ingredients), id: \.self) { ingredient in
                                HStack {
                                    Text(ingredient.name ?? "")
                                    Text(ingredient.wholeQuantity ?? "")
                                    Text(ingredient.fractionalQuantity ?? "")
                                    Text(ingredient.units ?? "")
                                }
                            }
                        }
                    }
                    //image
                }
                .frame(maxWidth: .infinity)
                
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
        newIngredient1.wholeQuantity = "1"
        newIngredient1.fractionalQuantity = ""
        newIngredient1.units = "cups"
        
        let newIngredient2 = IngredientEntity(context: context)
        newIngredient2.name = "Blueberries"
        newIngredient2.wholeQuantity = "2"
        newIngredient2.fractionalQuantity = "1/4"
        newIngredient2.units = "tbsp"
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = "Smoothie"
        newRecipe.ingredientsList = [newIngredient1, newIngredient2]
        
        return newRecipe
    }
}
