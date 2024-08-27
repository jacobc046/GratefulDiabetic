//
//  Bulleted List.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/23/24.
//

import SwiftUI

struct Bulleted_List: View {
    @State var title: String
    @State var ingredients: String
    @State var steps: String
    @State var notes: String
    
    init(recipe: RecipeEntity?) {
        if let recipe = recipe {
            title = recipe.name ?? ""
            ingredients = recipe.ingredients ?? "• "
            steps = recipe.steps ?? "• "
            notes = recipe.notes ?? ""
        } else {
            title = ""
            ingredients = "• "
            steps = "• "
            notes = ""
        }
    }
    
    
    var body: some View {
        TextField("Title", text: $title)
            .textInputAutocapitalization(.words)
            .textFieldStyle(.roundedBorder)
            .font(.title)
            .padding([.leading, .trailing, .bottom], 15)
        
        Form {
            Section("Ingredients") {
                TextEditor(text: $ingredients)
                    .onKeyPress(.return) {
                        ingredients += "• "
                        return .ignored
                }
            }
            
            Section("Steps") {
                TextEditor(text: $steps)
                    .onKeyPress(.return) {
                        steps += "• "
                        return .ignored
                    }
                    .frame(height: 150)
            }
            Section("Notes") {
                TextEditor(text: $notes)
            }
        }
        .formStyle(.columns)
        .padding(.leading)
    }
}

#Preview {
    Bulleted_List(recipe: CoreDataManager.instance.sampleRecipe)
}
