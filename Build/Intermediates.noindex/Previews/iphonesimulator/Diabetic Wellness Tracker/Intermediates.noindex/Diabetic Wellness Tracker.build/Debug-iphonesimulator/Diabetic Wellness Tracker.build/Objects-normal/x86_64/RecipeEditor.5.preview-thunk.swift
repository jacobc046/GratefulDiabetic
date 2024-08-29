@_private(sourceFile: "RecipeEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeEditor.swift", line: 37)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(TextField(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: __designTimeSelection($title, "#11450.[1].[8].property.[0].[0].arg[0].value.[0].arg[1].value"))
                .textInputAutocapitalization(.words)
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .padding([.leading, .trailing, .bottom], __designTimeInteger("#11450.[1].[8].property.[0].[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 15)), "#11450.[1].[8].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(Form {
                __designTimeSelection(Section(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Ingredients")) {
                    __designTimeSelection(TextEditor(text: __designTimeSelection($ingredients, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value"))
                        .onKeyPress(.return) {
                            ingredients += __designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                            return .ignored
                        }
                        .border(.gray), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(Section(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "Steps")) {
                    __designTimeSelection(TextEditor(text: __designTimeSelection($steps, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value"))
                        .onKeyPress(.return) {
                            steps += __designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value.[0].[0]", fallback: "• ")
                            return .ignored
                        }
                        .border(.gray), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]")
                }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                __designTimeSelection(Section(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value", fallback: "Notes")) {
                    __designTimeSelection(TextEditor(text: __designTimeSelection($notes, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value"))
                        .border(.gray), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0]")
                }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
            }
            .formStyle(.columns)
            .padding([.leading, .trailing])
            
            .toolbar {
                __designTimeSelection(ToolbarItem(placement: .topBarLeading) {
                    __designTimeSelection(Button(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty {
                            __designTimeSelection(dismiss(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].[0].[0]")
                        } else {
                            __designTimeSelection(showAlert.toggle(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].[1].[0]")
                        }
                    }
                    .alert(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: __designTimeSelection($showAlert, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value")) {
                        __designTimeSelection(Button(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            // Add logic to clean up if necessary
                            __designTimeSelection(dismiss(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0]")
                        }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0]")
                    }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0]") message: {
                        __designTimeSelection(Text(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to cancel your changes?")), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0]")
                    }
                }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[0]")
                __designTimeSelection(ToolbarItem(placement: .topBarTrailing) {
                    __designTimeSelection(Button(__designTimeString("#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        __designTimeSelection(manager.saveData(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                        __designTimeSelection(dismiss(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[1].value.[1]")
                    }
                    .bold(), "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[1].arg[1].value.[0]")
                }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.[1]")
            }, "#11450.[1].[8].property.[0].[0].arg[0].value.[1]")
        }
        .navigationBarBackButtonHidden(), "#11450.[1].[8].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeEditor
#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}



