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
    @State var ingredients: NSSet
    
    init(recipe: RecipeEntity?) {
        self.recipe = recipe
        title = recipe?.name ?? ""
        ingredients = recipe?.ingredientsList ?? []
    }
    
    func convertIngredients() -> [IngredientEntity] {
        let ingredientsArr = ingredients.allObjects as NSArray
        guard let ingredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
        return ingredients
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
                    ForEach(convertIngredients()) { ingredient in
                        HStack(spacing: 20) {
                            Text(ingredient.name ?? "")
                            Spacer()
                            Text(ingredient.wholeQuantity ?? "")
                            Text(ingredient.fractionalQuantity ?? "")
                            Text(ingredient.units ?? "")
                        }
                    }
                }
                .listStyle(InsetListStyle())
//                .listRowSpacing(50)
//                .scrollContentBackground(.hidden)
            }
            .padding()
            //.navigationTitle(recipe?.name ?? "Create New Recipe")
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
        let newRecipe = RecipeEntity(context: manager.context)
        newRecipe.name = title
        //newRecipe.ingredientsList
        manager.saveData()
    }
}

#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}
