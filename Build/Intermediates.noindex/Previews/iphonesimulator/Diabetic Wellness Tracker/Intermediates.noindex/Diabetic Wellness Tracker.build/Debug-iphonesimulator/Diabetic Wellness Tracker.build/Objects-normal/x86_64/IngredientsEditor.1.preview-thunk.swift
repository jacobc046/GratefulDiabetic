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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/IngredientsEditor.swift", line: 104)
        let newIngredient = IngredientEntity(context: CoreDataManager.instance.context)
        newIngredient.name = __designTimeString("#4919.[4].[0].property.[0].[1].[0]", fallback: "Strawberries")
        newIngredient.wholeQuantity = __designTimeString("#4919.[4].[0].property.[0].[2].[0]", fallback: "1")
        newIngredient.fractionalQuantity = __designTimeString("#4919.[4].[0].property.[0].[3].[0]", fallback: "1/2")
        
        return newIngredient
    
#sourceLocation()
    }
}

extension IngredientsEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/IngredientsEditor.swift", line: 50)
        NavigationStack {
            
            TextField(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Name"), text: $viewModel.name)
                .padding([.leading, .trailing], __designTimeInteger("#4919.[2].[7].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 15))
                .font(.title)
            
            Picker(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Units"), selection: $viewModel.units) {
                ForEach(unitChoices, id: \.self) { unit in
                    Text(unit.capitalized)
                }
            }
            .pickerStyle(.palette)
            .padding(.top, __designTimeInteger("#4919.[2].[7].property.[0].[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 15))
        
        VStack {
            HStack(alignment: .center) {
                Text(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Amount:"))
                Picker(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: ""), selection: $viewModel.wholeQuantity) {
                    ForEach(wholeChoices, id: \.self) { quantity in
                        Text(quantity)
                    }
                }
                Picker(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: ""), selection: $viewModel.fractionalQuantity) {
                    ForEach(fractionalChoices, id: \.self) { fraction in
                        Text(fraction)
                            .tracking(__designTimeInteger("#4919.[2].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 3))
                    }
                }
            }
        }
        .pickerStyle(WheelPickerStyle())
        Spacer()
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#4919.[2].[7].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        viewModel.saveIngredient()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    
#sourceLocation()
    }
}

extension IngredientEditorViewModel {
    @_dynamicReplacement(for: saveIngredient()) private func __preview__saveIngredient() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/IngredientsEditor.swift", line: 27)
        self.ingredient?.name = name
        self.ingredient?.units = units
        self.ingredient?.wholeQuantity = wholeQuantity
        self.ingredient?.fractionalQuantity = fractionalQuantity
        CoreDataManager.instance.saveData()
    
#sourceLocation()
    }
}

import class Diabetic_Wellness_Tracker.IngredientEditorViewModel
import struct Diabetic_Wellness_Tracker.IngredientsEditor
#Preview {
    IngredientsEditor(ingredient: nil)
        .environmentObject(CoreDataManager.instance)
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



