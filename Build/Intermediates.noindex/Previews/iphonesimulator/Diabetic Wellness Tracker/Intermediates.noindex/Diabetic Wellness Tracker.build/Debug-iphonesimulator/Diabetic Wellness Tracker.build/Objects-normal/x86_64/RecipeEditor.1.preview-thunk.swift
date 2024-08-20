@_private(sourceFile: "RecipeEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension RecipeEditor {
    @_dynamicReplacement(for: saveRecipe()) private func __preview__saveRecipe() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 174)
        if let recipe = self.recipe {
            recipe.name = viewModel.title
            recipe.ingredientsList = Set(ingredients) as NSSet
        } else {
            let newRecipe = RecipeEntity(context: manager.context)
            newRecipe.name = viewModel.title
            newRecipe.ingredientsList = Set(ingredients) as NSSet
        }
        manager.saveData()
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: deleteIngredient(indexSet:)) private func __preview__deleteIngredient(indexSet: IndexSet) {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 167)
        guard let index = indexSet.first else { return }
        let entityToDelete = ingredients[index]
        CoreDataManager.instance.context.delete(entityToDelete)
        CoreDataManager.instance.saveData()
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 98)
        NavigationStack {
            VStack {
                HStack {
                    TextField(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $viewModel.title)
                        .textInputAutocapitalization(.words)
                        .textFieldStyle(.roundedBorder)
                }
                .font(.title)
                .padding([.leading, .trailing, .bottom], __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15))
                
                List {
                    ForEach(ingredients) { ingredient in
                        NavigationLink(destination: {
                            IngredientsEditor(ingredient: ingredient)
                        }, label: {
                            HStack(spacing: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 20)) {
                                Text(ingredient.name ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: ""))
                                Spacer()
                                Text(ingredient.wholeQuantity ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[2].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[2].modifier[0].arg[0].value", fallback: 20), alignment: .center)
                                Text(ingredient.fractionalQuantity ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[3].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[3].modifier[0].arg[0].value", fallback: 30), alignment: .center)
                                Text(ingredient.units ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[4].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[4].modifier[0].arg[0].value", fallback: 50), alignment: .center)
                            }
                        })
                    }
                    .onDelete { indexSet in
                        deleteIngredient(indexSet: indexSet)
                    }
                    
                    NavigationLink(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "New Ingredient")) {
                        IngredientsEditor(ingredient: nil, recipe: recipe)
                    }
                }
                .listStyle(InsetListStyle())
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if viewModel.title.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            // Add logic to clean up if necessary
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to cancel your changes?"))
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        saveRecipe()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: getIngredients(recipe:)) private func __preview__getIngredients(recipe: RecipeEntity) -> [IngredientEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 64)
        var ingredients: [IngredientEntity] = []
        let request = NSFetchRequest<IngredientEntity>(entityName: __designTimeString("#7680.[3].[2].[1].value.[0]", fallback: "IngredientEntity"))
                
        request.sortDescriptors = [NSSortDescriptor(keyPath: \RecipeEntity.name, ascending: __designTimeBoolean("#7680.[3].[2].[2].[0]", fallback: true))]
        request.predicate = NSPredicate(format: __designTimeString("#7680.[3].[2].[3].[0]", fallback: "name == %@"), recipe.name!)
                
        do {
            ingredients = try manager.context.fetch(request)
            return ingredients
        } catch let error {
            print("error \(error)")
            return []
        }
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: getSortedIngredients(recipe:)) private func __preview__getSortedIngredients(recipe: RecipeEntity) -> [IngredientEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 55)
        let ingredientsArr = recipe.ingredientsList?.allObjects as? NSArray
        let sortDescriptors = [NSSortDescriptor(key: __designTimeString("#7680.[3].[1].[1].value.[0].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#7680.[3].[1].[1].value.[0].arg[1].value", fallback: false))]
        
        guard let sortedIngredients = ingredientsArr?.sortedArray(using: sortDescriptors) as? NSArray as? [IngredientEntity] else { return [] }
        
        return sortedIngredients
    
#sourceLocation()
    }
}

import class Diabetic_Wellness_Tracker.RecipeEditorViewModel
import struct Diabetic_Wellness_Tracker.RecipeEditor
#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}



