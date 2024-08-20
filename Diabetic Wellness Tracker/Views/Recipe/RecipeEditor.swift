//
//  CreateNewRecipe.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

class RecipeEditorViewModel: ObservableObject {
    let recipe: RecipeEntity?
    let sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
    
    @Published var title: String
    @Published var ingredients: NSSet = []
    var originalIngredients: NSSet
    
    //initialize recipe entity
    init(recipe: RecipeEntity?) {
        if let recipe = recipe {
            self.recipe = recipe
            title = recipe.name ?? ""
            originalIngredients = recipe.ingredientsList ?? []
        } else {
            self.recipe = nil
            title = ""
            originalIngredients = []
        }
    }
    
//    var sortedIngredients: [IngredientEntity] {
//        let ingredientsArr = originalIngredients.allObjects as NSArray
//        
//        guard let sortedIngredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
//        
//        return sortedIngredients
//    }
    
//    func deleteIngredient(indexSet: IndexSet) {
//        guard let index = indexSet.first else { return }
//        let entityToDelete = sortedIngredients[index]
//        self.recipe?.removeFromIngredientsList(entityToDelete)
//        CoreDataManager.instance.context.delete(entityToDelete)
//        CoreDataManager.instance.saveData()
//    }
}


struct RecipeEditor: View {
    
    @ObservedObject var viewModel: RecipeEditorViewModel
    
    func getSortedIngredients(recipe: RecipeEntity) -> [IngredientEntity] {
        let ingredientsArr = recipe.ingredientsList?.allObjects as? NSArray
        let sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        
        guard let sortedIngredients = ingredientsArr?.sortedArray(using: sortDescriptors) as? NSArray as? [IngredientEntity] else { return [] }
        
        return sortedIngredients
    }
    
    func getIngredients(recipe: RecipeEntity) -> [IngredientEntity] {
        var ingredients: [IngredientEntity] = []
        let request = NSFetchRequest<IngredientEntity>(entityName: "IngredientEntity")
                
        request.sortDescriptors = [NSSortDescriptor(keyPath: \RecipeEntity.name, ascending: true)]
        request.predicate = NSPredicate(format: "name == %@", recipe.name!)
                
        do {
            ingredients = try manager.context.fetch(request)
            return ingredients
        } catch let error {
            print("error \(error)")
            return []
        }
    }
    
    let recipe: RecipeEntity?
    @State var ingredients: [IngredientEntity]
    init(recipe: RecipeEntity?) {
        if let recipe = recipe {
            viewModel = RecipeEditorViewModel(recipe: recipe)
            self.recipe = recipe
            ingredients = recipe.ingredientsList?.allObjects as? NSArray as? [IngredientEntity] ?? []
        } else {
            viewModel = RecipeEditorViewModel(recipe: nil)
            self.recipe = nil
            ingredients = []
        }
    }
    
    @Environment(\.dismiss) var dismiss
    @StateObject var manager = CoreDataManager.instance
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Title", text: $viewModel.title)
                        .textInputAutocapitalization(.words)
                        .textFieldStyle(.roundedBorder)
                }
                .font(.title)
                .padding([.leading, .trailing, .bottom], 15)
                
                List {
                    ForEach(ingredients) { ingredient in
                        NavigationLink(destination: {
                            //IngredientsEditor(ingredient: ingredient, recipe: recipe)
                        }, label: {
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
                        })
                    }
                    .onDelete { indexSet in
                        deleteIngredient(indexSet: indexSet)
                    }
                    
                    NavigationLink("New Ingredient") {
                       // IngredientsEditor(ingredient: nil, recipe: recipe)
                    }
                }
                .listStyle(InsetListStyle())
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        if viewModel.title.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert("Confirm", isPresented: $showAlert) {
                        Button("Delete", role: .destructive) {
                            // Add logic to clean up if necessary
                            dismiss()
                        }
                    } message: {
                        Text("Are you sure you want to cancel your changes?")
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
    
    func deleteIngredient(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entityToDelete = ingredients[index]
        CoreDataManager.instance.context.delete(entityToDelete)
        CoreDataManager.instance.saveData()
    }
    
    func saveRecipe() {
        if let recipe = self.recipe {
            recipe.name = viewModel.title
            recipe.ingredientsList = Set(ingredients) as NSSet
        } else {
            let newRecipe = RecipeEntity(context: manager.context)
            newRecipe.name = viewModel.title
            newRecipe.ingredientsList = Set(ingredients) as NSSet
        }
        manager.saveData()
    }
}

#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}
