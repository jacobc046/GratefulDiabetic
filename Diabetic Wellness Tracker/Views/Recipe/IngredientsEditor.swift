//
//  IngredientsEditor.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/8/24.
//

import SwiftUI

class IngredientEditorViewModel: ObservableObject {
    let ingredient: IngredientEntity?
    let recipe: RecipeEntity
    @StateObject var manager = CoreDataManager.instance
    
    @Published var name: String
    @Published var units: String
    @Published var wholeQuantity: String
    @Published var fractionalQuantity: String
    
    init(ingredient: IngredientEntity?, recipe: RecipeEntity) {
        if let ingredient = ingredient {
            self.ingredient = ingredient
            name = ingredient.name ?? ""
            units = ingredient.units ?? "ounces"
            wholeQuantity = ingredient.wholeQuantity ?? "0"
            fractionalQuantity  = ingredient.fractionalQuantity ?? "-"
        } else {
            self.ingredient = nil
            name = ""
            units = "ounces"
            wholeQuantity = "0"
            fractionalQuantity = "-"
        }
        self.recipe = recipe
    }
    
    func saveIngredient() {
        if let ingredient = ingredient {
            ingredient.name = name
            ingredient.units = units
            ingredient.wholeQuantity = wholeQuantity
            ingredient.fractionalQuantity = fractionalQuantity
        } else {
            let newIngredient = IngredientEntity(context: manager.context)
            newIngredient.name = name
            newIngredient.wholeQuantity = wholeQuantity
            newIngredient.fractionalQuantity = fractionalQuantity
            recipe.addToIngredientsList(newIngredient)
        }
        manager.saveData()
    }
}

struct IngredientsEditor: View {
    let unitChoices: [String] = ["cups", "ounces", "tbsp", "tsp"]
    let wholeChoices = Array(0...20).map { String($0) }
    let fractionalChoices: [String] = [" - ", "1/8", "1/4", "1/3", "3/8", "1/2", "5/8", "2/3", "7/8"]
    
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: IngredientEditorViewModel
    
    init(ingredient: IngredientEntity?, recipe: RecipeEntity) {
        viewModel = IngredientEditorViewModel(ingredient: ingredient, recipe: recipe)
    }
    
    var body: some View {
        NavigationStack {
            
            TextField("Name", text: $viewModel.name)
                .padding([.leading, .trailing], 15)
                .font(.title)
            
            Picker("Units", selection: $viewModel.units) {
                ForEach(unitChoices, id: \.self) { unit in
                    Text(unit.capitalized)
                }
            }
            .pickerStyle(.palette)
            .padding(.top, 15)
        
        VStack {
            HStack(alignment: .center) {
                Text("Amount:")
                Picker("", selection: $viewModel.wholeQuantity) {
                    ForEach(wholeChoices, id: \.self) { quantity in
                        Text(quantity)
                    }
                }
                Picker("", selection: $viewModel.fractionalQuantity) {
                    ForEach(fractionalChoices, id: \.self) { fraction in
                        Text(fraction)
                            .tracking(3)
                    }
                }
            }
        }
        .pickerStyle(WheelPickerStyle())
        Spacer()
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        viewModel.saveIngredient()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    }
}

#Preview {
    IngredientsEditor(ingredient: CoreDataManager.instance.sampleIngredient, recipe: CoreDataManager.instance.sampleRecipe)
}

extension CoreDataManager {
    var sampleIngredient: IngredientEntity {
        let newIngredient = IngredientEntity(context: CoreDataManager.instance.context)
        newIngredient.name = "Strawberries"
        newIngredient.wholeQuantity = "1"
        newIngredient.fractionalQuantity = "1/2"
        
        return newIngredient
    }
}

