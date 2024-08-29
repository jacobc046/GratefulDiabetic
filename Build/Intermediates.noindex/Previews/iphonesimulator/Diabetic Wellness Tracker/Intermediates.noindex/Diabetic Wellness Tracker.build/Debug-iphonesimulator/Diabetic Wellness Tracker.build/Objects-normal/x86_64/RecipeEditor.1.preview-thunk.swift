@_private(sourceFile: "RecipeEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension RecipeEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 56)
        NavigationStack {
                Form {
                    TextField(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title)
                        .textInputAutocapitalization(.words)
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                        .padding([.trailing, .bottom], __designTimeInteger("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 15))
                    
                    Section(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Ingredients")) {
                        TextEditor(text: $ingredients)
                            .onKeyPress(.return) {
                                ingredients += __designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                                return .ignored
                            }
                            .border(.gray)
                    }
                    
                    Section(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Steps")) {
                        TextEditor(text: $steps)
                            .onKeyPress(.return) {
                                steps += __designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                                return .ignored
                            }
                            .border(.gray)
                            .frame(minHeight: __designTimeInteger("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value", fallback: 40), maxHeight: __designTimeInteger("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[1].value", fallback: 400))
                    }
                    Section(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value", fallback: "Notes")) {
                        TextEditor(text: $notes)
                            .border(.gray)
                    }
                }
                .formStyle(.columns)
                .padding([.leading, .trailing])
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            // Add logic to clean up if necessary
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to cancel your changes?"))
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#11450.[1].[10].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        saveRecipe()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
        .navigationBarBackButtonHidden()
    
#sourceLocation()
    }
}

extension RecipeEditor {
    @_dynamicReplacement(for: saveRecipe()) private func __preview__saveRecipe() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 39)
        if let recipe = recipe {
            recipe.name = title
            recipe.ingredients = ingredients
            recipe.steps = steps
            recipe.notes = notes
        } else {
            let newRecipe = RecipeEntity(context: manager.context)
            newRecipe.name = title
            newRecipe.ingredients = ingredients
            newRecipe.steps = steps
            newRecipe.notes = notes
        }
        manager.saveData()
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeEditor
#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}



