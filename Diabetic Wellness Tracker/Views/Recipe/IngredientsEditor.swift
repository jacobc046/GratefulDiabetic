//
//  IngredientsEditor.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/8/24.
//

import SwiftUI

class IngredientEditorViewModel: ObservableObject {
    let ingredient: IngredientEntity?
    
    @Published var name: String
    @Published var units: String
    @Published var wholeQuantity: String
    @Published var fractionalQuantity: String
    
    init(ingredient: IngredientEntity?) {
        self.ingredient = ingredient ?? IngredientEntity(context: CoreDataManager.instance.context)
        name = ingredient?.name ?? ""
        units = ingredient?.units ?? "ounces"
        wholeQuantity = ingredient?.wholeQuantity ?? "0"
        fractionalQuantity  = ingredient?.fractionalQuantity ?? "-"
    }
    
    func saveIngredient() {
        self.ingredient?.name = name
        self.ingredient?.units = units
        self.ingredient?.wholeQuantity = wholeQuantity
        self.ingredient?.fractionalQuantity = fractionalQuantity
        CoreDataManager.instance.saveData()
    }
}

struct IngredientsEditor: View {
    let unitChoices: [String] = ["cups", "ounces", "tbsp", "tsp"]
    let wholeChoices = Array(0...20).map { String($0) }
    let fractionalChoices: [String] = [" - ", "1/8", "1/4", "2/3", "3/8", "1/2", "5/8", "2/3", "7/8"]
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var manager: CoreDataManager
    
    @ObservedObject var viewModel: IngredientEditorViewModel
    
    init(ingredient: IngredientEntity?) {
        viewModel = IngredientEditorViewModel(ingredient: ingredient)
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
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
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
    IngredientsEditor(ingredient: nil)
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

