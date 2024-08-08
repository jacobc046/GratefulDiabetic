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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/RecipeEditor.swift", line: 95)
        let newRecipe = RecipeEntity(context: manager.context)
        newRecipe.name = title
        //newRecipe.ingredientsList
        manager.saveData()
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/RecipeEditor.swift", line: 38)
        NavigationStack {
            VStack {
                HStack {
                    TextField(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title)
                    .textInputAutocapitalization(.words)
                    .textFieldStyle(.roundedBorder)
                }
                .font(.title3)
                .padding([.leading, .trailing, .bottom], __designTimeInteger("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 15))
                
                List {
                    ForEach(convertIngredients()) { ingredient in
                        HStack(spacing: __designTimeInteger("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: 20)) {
                            Text(ingredient.name ?? __designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: ""))
                            Spacer()
                            Text(ingredient.wholeQuantity ?? __designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[2].arg[0].value.[0]", fallback: ""))
                            Text(ingredient.fractionalQuantity ?? __designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[3].arg[0].value.[0]", fallback: ""))
                            Text(ingredient.units ?? __designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[4].arg[0].value.[0]", fallback: ""))
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
                    Button(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to delete your recipe?"))
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#35635.[2].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
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
    @_dynamicReplacement(for: convertIngredients()) private func __preview__convertIngredients() -> [IngredientEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/RecipeEditor.swift", line: 26)
        let ingredientsArr = ingredients.allObjects as NSArray
        guard let ingredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
        return ingredients
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeEditor
#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}



