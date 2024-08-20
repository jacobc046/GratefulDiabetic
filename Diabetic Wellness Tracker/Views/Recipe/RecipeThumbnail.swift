//
//  RecipeThumbnail.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipeThumbnail: View {
    @ObservedObject var recipe: RecipeEntity
    
    @StateObject var manager = CoreDataManager.instance
    
    @State var showActions: Bool = false
    @State var isEditing: Bool = false
    
    let sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
    
    var sortedIngredients: [IngredientEntity] {
        let ingredients = recipe.ingredientsList?.allObjects ?? []
        let ingredientsArr = ingredients as NSArray
        
        guard let sortedIngredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
        
        return sortedIngredients
    }
    
    let columns = [
        GridItem(.fixed(200)),
        GridItem(.fixed(20)),
        GridItem(.fixed(40)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading) {
                    Text(recipe.name ?? "title")
                        .font(.title)
                    LazyVGrid(columns: columns, alignment: .leading) {
                        ForEach(Array(sortedIngredients), id: \.self) { ingredient in
                            Text(ingredient.name ?? "")
                            Text(ingredient.wholeQuantity ?? "")
                            Text(ingredient.fractionalQuantity ?? "")
                            Text(ingredient.units ?? "")
                        }
                    }
                    
                    Button {
                        showActions.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .confirmationDialog("", isPresented: $showActions) {
                        Button {
                            isEditing.toggle()
                        } label: {
                            Label("Edit", systemImage: "pencil")
                        }
                        Button(role: .destructive) {
                            manager.context.delete(recipe)
                            manager.saveData()
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            .foregroundStyle(.black)
            .padding()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding()
        .navigationDestination(isPresented: $isEditing, destination: { RecipeEditor(recipe: recipe)
        })
    }
}


#Preview {
    RecipeThumbnail(recipe: RecipeEntity(context: CoreDataManager.instance.context))
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}

extension CoreDataManager {
    var sampleRecipe: RecipeEntity {
        let context = Self.instance.context

        // Check if the sample recipe already exists
        let fetchRequest: NSFetchRequest<RecipeEntity> = RecipeEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "name == %@", "Smoothie")
        
        if let existingRecipe = try? context.fetch(fetchRequest).first {
            return existingRecipe
        }

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

        try? context.save()
        
        return newRecipe
    }
}
