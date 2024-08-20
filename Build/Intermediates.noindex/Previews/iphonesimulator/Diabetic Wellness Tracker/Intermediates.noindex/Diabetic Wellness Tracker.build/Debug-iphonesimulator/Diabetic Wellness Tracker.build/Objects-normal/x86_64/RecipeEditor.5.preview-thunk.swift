@_private(sourceFile: "RecipeEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
            let newRecipe = RecipeEntity(context: __designTimeSelection(manager.context, "#7680.[3].[11].[0].[1].[0].value.arg[0].value"))
            newRecipe.name = viewModel.title
            newRecipe.ingredientsList = Set(ingredients) as NSSet
        }
        __designTimeSelection(manager.saveData(), "#7680.[3].[11].[1]")
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: deleteIngredient(indexSet:)) private func __preview__deleteIngredient(indexSet: IndexSet) {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 167)
        guard let index = indexSet.first else { return }
        let entityToDelete = ingredients[__designTimeSelection(index, "#7680.[3].[10].[1].value.[0].value")]
        __designTimeSelection(CoreDataManager.instance.context.delete(__designTimeSelection(entityToDelete, "#7680.[3].[10].[2].modifier[0].arg[0].value")), "#7680.[3].[10].[2]")
        __designTimeSelection(CoreDataManager.instance.saveData(), "#7680.[3].[10].[3]")
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 98)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(VStack {
                __designTimeSelection(HStack {
                    __designTimeSelection(TextField(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: __designTimeSelection($viewModel.title, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value"))
                        .textInputAutocapitalization(.words)
                        .textFieldStyle(.roundedBorder), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }
                .font(.title)
                .padding([.leading, .trailing, .bottom], __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15)), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(List {
                    __designTimeSelection(ForEach(__designTimeSelection(ingredients, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { ingredient in
                        __designTimeSelection(NavigationLink(destination: {
                            __designTimeSelection(IngredientsEditor(ingredient: __designTimeSelection(ingredient, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        }, label: {
                            __designTimeSelection(HStack(spacing: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 20)) {
                                __designTimeSelection(Text(ingredient.name ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: "")), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                __designTimeSelection(Spacer(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1]")
                                __designTimeSelection(Text(ingredient.wholeQuantity ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[2].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[2].modifier[0].arg[0].value", fallback: 20), alignment: .center), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[2]")
                                __designTimeSelection(Text(ingredient.fractionalQuantity ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[3].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[3].modifier[0].arg[0].value", fallback: 30), alignment: .center), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[3]")
                                __designTimeSelection(Text(ingredient.units ?? __designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[4].arg[0].value.[0]", fallback: ""))
                                    .frame(width: __designTimeInteger("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[4].modifier[0].arg[0].value", fallback: 50), alignment: .center), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[4]")
                            }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                        }), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                    }
                    .onDelete { indexSet in
                        __designTimeSelection(deleteIngredient(indexSet: __designTimeSelection(indexSet, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value")), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value.[0]")
                    }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                    
                    __designTimeSelection(NavigationLink(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "New Ingredient")) {
                        __designTimeSelection(IngredientsEditor(ingredient: nil), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]")
                    }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                }
                .listStyle(__designTimeSelection(InsetListStyle(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                __designTimeSelection(ToolbarItem(placement: .topBarLeading) {
                    __designTimeSelection(Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if viewModel.title.isEmpty {
                            __designTimeSelection(dismiss(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].[0].[0]")
                        } else {
                            __designTimeSelection(showAlert.toggle(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].[1].[0]")
                        }
                    }
                    .alert(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: __designTimeSelection($showAlert, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value")) {
                        __designTimeSelection(Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            // Add logic to clean up if necessary
                            __designTimeSelection(dismiss(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0]")
                        }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0]")
                    }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0]") message: {
                        __designTimeSelection(Text(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to cancel your changes?")), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0]")
                    }
                }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0]")
                __designTimeSelection(ToolbarItem(placement: .topBarTrailing) {
                    __designTimeSelection(Button(__designTimeString("#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        __designTimeSelection(saveRecipe(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                        __designTimeSelection(dismiss(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[1].value.[1]")
                    }
                    .bold(), "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0]")
                }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1]")
            }, "#7680.[3].[9].property.[0].[0].arg[0].value.[0]")
        }, "#7680.[3].[9].property.[0].[0]")
    
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
        let sortDescriptors = [__designTimeSelection(NSSortDescriptor(key: __designTimeString("#7680.[3].[1].[1].value.[0].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#7680.[3].[1].[1].value.[0].arg[1].value", fallback: false)), "#7680.[3].[1].[1].value.[0]")]
        
        guard let sortedIngredients = ingredientsArr?.sortedArray(using: sortDescriptors) as? NSArray as? [IngredientEntity] else { return [] }
        
        return __designTimeSelection(sortedIngredients, "#7680.[3].[1].[3]")
    
#sourceLocation()
    }
}

import class Diabetic_Wellness_Tracker.RecipeEditorViewModel
import struct Diabetic_Wellness_Tracker.RecipeEditor
#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}



