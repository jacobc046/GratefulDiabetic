//
//  CreateNewRecipe.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipeEditor: View {
    
    let recipe: RecipeEntity?
    let sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
    
    @State var title: String
    var originalIngredients: NSSet
    
    init(recipe: RecipeEntity?) {
        self.recipe = recipe
        title = recipe?.name ?? ""
        originalIngredients = recipe?.ingredientsList ?? []
    }
    
    var sortedIngredients: [IngredientEntity] {
        let ingredientsArr = originalIngredients.allObjects as NSArray
        
        guard let sortedIngredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
        
        return sortedIngredients
    }
    
    @State var showAlert: Bool = false
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var manager: CoreDataManager
    
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Title", text: $title)
                    .textInputAutocapitalization(.words)
                    .textFieldStyle(.roundedBorder)
                }
                .font(.title3)
                .padding([.leading, .trailing, .bottom], 15)
                
                List {
                    ForEach(sortedIngredients) { ingredient in
                        HStack(spacing: 20) {
                            Text(ingredient.name ?? "")
                            Spacer()
                            Text(ingredient.wholeQuantity ?? "")
                                .frame(width: 20, alignment: .center)
                            Text(ingredient.fractionalQuantity ?? "")
                                .frame(width: 30, alignment: .center)
                            Text(ingredient.units ?? "")
                                .frame(width: 50, alignment: .center)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        guard let index = indexSet.first else { return }
                        let entityToDelete = sortedIngredients[index]
                        manager.context.delete(entityToDelete)
                        
                    })
                }
                .listStyle(InsetListStyle())
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        if title.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert("Confirm", isPresented: $showAlert) {
                        Button("Delete", role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text("Are you sure you want to delete your recipe?")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        saveRecipe()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    }
    
    func saveRecipe() {
        let ingredientsSet: NSSet = []
        ingredientsSet.addingObjects(from: sortedIngredients)
        
        if let recipe = recipe {
            recipe.removeFromIngredientsList(originalIngredients)
            recipe.addToIngredientsList(ingredientsSet)
            
        } else {
            let newRecipe = RecipeEntity(context: manager.context)
            newRecipe.name = title
            newRecipe.ingredientsList = ingredientsSet
        }
        manager.saveData()
    }
}

#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}
