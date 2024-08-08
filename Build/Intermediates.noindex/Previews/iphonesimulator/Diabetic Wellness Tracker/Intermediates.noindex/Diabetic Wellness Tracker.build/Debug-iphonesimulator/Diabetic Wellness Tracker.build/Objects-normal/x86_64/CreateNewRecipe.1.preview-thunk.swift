@_private(sourceFile: "CreateNewRecipe.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CreateNewRecipe {
    @_dynamicReplacement(for: saveRecipe()) private func __preview__saveRecipe() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/CreateNewRecipe.swift", line: 61)
        let newRecipe = RecipeEntity(context: manager.context)
        newRecipe.name = title
        //newRecipe.ingredientsList
        manager.saveData()
    
#sourceLocation()
    }
}

extension CreateNewRecipe {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/CreateNewRecipe.swift", line: 22)
        NavigationStack {
            VStack {
                TextField(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title)
                    .font(.title3)
                    .textInputAutocapitalization(.words)
            }
            .padding()
            .navigationTitle(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Create New Recipe"))
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty && text.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to delete your recipe?"))
                    }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#4384.[1].[6].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
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

import struct Diabetic_Wellness_Tracker.CreateNewRecipe
#Preview {
    CreateNewRecipe()
}



