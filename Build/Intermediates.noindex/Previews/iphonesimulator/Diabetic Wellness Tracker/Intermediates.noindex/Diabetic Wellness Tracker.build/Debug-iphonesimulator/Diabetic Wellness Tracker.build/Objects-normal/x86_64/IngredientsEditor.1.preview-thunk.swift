@_private(sourceFile: "IngredientsEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CoreDataManager {
    @_dynamicReplacement(for: sampleIngredient) private var __preview__sampleIngredient: IngredientEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/IngredientsEditor.swift", line: 100)
        let newIngredient = IngredientEntity(context: CoreDataManager.instance.context)
        newIngredient.name = __designTimeString("#11539.[3].[0].property.[0].[1].[0]", fallback: "Strawberries")
        newIngredient.wholeQuantity = __designTimeString("#11539.[3].[0].property.[0].[2].[0]", fallback: "1")
        newIngredient.fractionalQuantity = __designTimeString("#11539.[3].[0].property.[0].[3].[0]", fallback: "1/2")
        
        return newIngredient
    
#sourceLocation()
    }
}

extension IngredientsEditor {
    @_dynamicReplacement(for: saveIngredient()) private func __preview__saveIngredient() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/IngredientsEditor.swift", line: 86)
        ingredient.name = self.name
        ingredient.units = self.units
        ingredient.wholeQuantity = self.wholeQuantity
        ingredient.fractionalQuantity = ingredient.fractionalQuantity == __designTimeString("#11539.[1].[12].[3].[0]", fallback: "-") ? __designTimeString("#11539.[1].[12].[3].[1]", fallback: "") : self.fractionalQuantity
        manager.saveData()
    
#sourceLocation()
    }
}

extension IngredientsEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/IngredientsEditor.swift", line: 35)
        NavigationStack {
            
            TextField(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Name"), text: $name)
                .padding([.leading, .trailing], __designTimeInteger("#11539.[1].[11].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 15))
                .font(.title)
            
            Picker(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Units"), selection: $units) {
                ForEach(unitChoices, id: \.self) { unit in
                    Text(unit.capitalized)
                }
            }
            .pickerStyle(.palette)
            .padding(.top, __designTimeInteger("#11539.[1].[11].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 15))
        
        VStack {
            HStack(alignment: .center) {
                Text(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Amount:"))
                Picker(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: ""), selection: $wholeQuantity) {
                    ForEach(wholeChoices, id: \.self) { quantity in
                        Text(quantity)
                    }
                }
                Picker(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: ""), selection: $fractionalQuantity) {
                    ForEach(fractionalChoices, id: \.self) { fraction in
                        Text(fraction)
                            .tracking(__designTimeInteger("#11539.[1].[11].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 3))
                    }
                }
            }
        }
        .pickerStyle(WheelPickerStyle())
        Spacer()
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#11539.[1].[11].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        saveIngredient()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.IngredientsEditor
#Preview {
    IngredientsEditor(ingredient: CoreDataManager.instance.sampleIngredient)
}



