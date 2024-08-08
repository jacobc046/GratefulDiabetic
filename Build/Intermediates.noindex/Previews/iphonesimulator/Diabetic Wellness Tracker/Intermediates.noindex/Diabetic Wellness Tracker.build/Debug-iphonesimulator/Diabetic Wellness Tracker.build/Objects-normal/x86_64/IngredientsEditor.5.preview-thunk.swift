@_private(sourceFile: "IngredientsEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/IngredientsEditor.swift", line: 52)
        let newIngredient = IngredientEntity(context: __designTimeSelection(CoreDataManager.instance.context, "#11539.[3].[0].property.[0].[0].value.arg[0].value"))
        newIngredient.name = __designTimeString("#11539.[3].[0].property.[0].[1].[0]", fallback: "Strawberries")
        newIngredient.wholeQuantity = __designTimeString("#11539.[3].[0].property.[0].[2].[0]", fallback: "1")
        newIngredient.fractionalQuantity = __designTimeString("#11539.[3].[0].property.[0].[3].[0]", fallback: "1/2")
        
        return __designTimeSelection(newIngredient, "#11539.[3].[0].property.[0].[4]")
    
#sourceLocation()
    }
}

extension IngredientsEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/IngredientsEditor.swift", line: 18)
        __designTimeSelection(Picker(__designTimeString("#11539.[1].[4].property.[0].[0].arg[0].value", fallback: "Units"), selection: __designTimeSelection($units, "#11539.[1].[4].property.[0].[0].arg[1].value")) {
            __designTimeSelection(ForEach(__designTimeSelection(units.reversed(), "#11539.[1].[4].property.[0].[0].arg[2].value.[0].arg[0].value"), id: \.self) { unit in
                __designTimeSelection(Text(__designTimeSelection(unit.capitalized, "#11539.[1].[4].property.[0].[0].arg[2].value.[0].arg[2].value.[0].arg[0].value")), "#11539.[1].[4].property.[0].[0].arg[2].value.[0].arg[2].value.[0]")
            }, "#11539.[1].[4].property.[0].[0].arg[2].value.[0]")
        }
        .pickerStyle(.palette), "#11539.[1].[4].property.[0].[0]")
        
        __designTimeSelection(VStack {
            __designTimeSelection(HStack(alignment: .center) {
                __designTimeSelection(Text(__designTimeString("#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Amount:")), "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[0]")
                __designTimeSelection(Picker(__designTimeString("#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: ""), selection: __designTimeSelection($wholeQuantities, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[1].value")) {
                    __designTimeSelection(ForEach(__designTimeSelection(wholeQuantities, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value"), id: \.self) { quantity in
                        __designTimeSelection(Text(__designTimeSelection(quantity, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[2].value.[0].arg[0].value")), "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0].arg[2].value.[0]")
                    }, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0]")
                }, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[1]")
                __designTimeSelection(Picker(__designTimeString("#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: ""), selection: __designTimeSelection($fractionalQauntities, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[1].value")) {
                    __designTimeSelection(ForEach(__designTimeSelection(fractionalQauntities, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value"), id: \.self) { fraction in
                        __designTimeSelection(Text(__designTimeSelection(fraction, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[2].value.[0].arg[0].value"))
                            .tracking(__designTimeInteger("#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 3)), "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0].arg[2].value.[0]")
                    }, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0]")
                }, "#11539.[1].[4].property.[0].[1].arg[0].value.[0].arg[1].value.[2]")
            }, "#11539.[1].[4].property.[0].[1].arg[0].value.[0]")
        }
        .pickerStyle(__designTimeSelection(WheelPickerStyle(), "#11539.[1].[4].property.[0].[1].modifier[0].arg[0].value")), "#11539.[1].[4].property.[0].[1]")
        __designTimeSelection(Spacer(), "#11539.[1].[4].property.[0].[2]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.IngredientsEditor
#Preview {
    IngredientsEditor(ingredient: CoreDataManager.instance.sampleIngredient)
}



