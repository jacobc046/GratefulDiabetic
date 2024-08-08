//
//  IngredientsEditor.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/8/24.
//

import SwiftUI

struct IngredientsEditor: View {
    
    var ingredient: IngredientEntity

    let unitChoices: [String] = ["cups", "ounces", "tbsp", "tsp"]
    let wholeChoices = Array(0...20).map { String($0) }
    let fractionalChoices: [String] = [" - ", "1/8", "1/4", "2/3", "3/8", "1/2", "5/8", "2/3", "7/8"]
    
    @State var name: String
    @State var units: String
    @State var wholeQuantity: String
    @State var fractionalQuantity: String
    
    init(ingredient: IngredientEntity) {
        self.ingredient = ingredient
        name = self.ingredient.name ?? ""
        units = self.ingredient.units ?? "ounces"
        wholeQuantity = self.ingredient.wholeQuantity ?? "0"
        fractionalQuantity  = self.ingredient.fractionalQuantity ?? "-"
    }
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var manager: CoreDataManager
    
    var body: some View {
        NavigationStack {
            
            TextField("Name", text: $name)
                .padding([.leading, .trailing], 15)
                .font(.title)
            
            Picker("Units", selection: $units) {
                ForEach(unitChoices, id: \.self) { unit in
                    Text(unit.capitalized)
                }
            }
            .pickerStyle(.palette)
            .padding(.top, 15)
        
        VStack {
            HStack(alignment: .center) {
                Text("Amount:")
                Picker("", selection: $wholeQuantity) {
                    ForEach(wholeChoices, id: \.self) { quantity in
                        Text(quantity)
                    }
                }
                Picker("", selection: $fractionalQuantity) {
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
                        saveIngredient()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    }
    
    func saveIngredient() {
        ingredient.name = self.name
        ingredient.units = self.units
        ingredient.wholeQuantity = self.wholeQuantity
        ingredient.fractionalQuantity = ingredient.fractionalQuantity == "-" ? "" : self.fractionalQuantity
        manager.saveData()
    }
}

#Preview {
    IngredientsEditor(ingredient: CoreDataManager.instance.sampleIngredient)
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

