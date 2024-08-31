//
//  Bulleted List.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/23/24.
//

import SwiftUI

struct RecipeEditor: View {
    @State var title: String
    @State var ingredients: String
    @State var steps: String
    @State var notes: String
    
    @State var showAlert: Bool = false
    
    @StateObject var manager = CoreDataManager.instance
    @Environment(\.dismiss) var dismiss
    
    let recipe: RecipeEntity?
    init(recipe: RecipeEntity?) {
        if let recipe = recipe {
            self.recipe = recipe
            title = recipe.name ?? ""
            ingredients = recipe.ingredients ?? "• "
            steps = recipe.steps ?? "• "
            notes = recipe.notes ?? ""
        } else {
            self.recipe = nil
            title = ""
            ingredients = "• "
            steps = "• "
            notes = ""
        }
    }
    
    func saveRecipe() {
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
    }
    
    
    var body: some View {
        NavigationStack {
                Form {
                    TextField("Title", text: $title)
                        .textInputAutocapitalization(.words)
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                        .padding([.trailing, .bottom], 15)
                    
                    Section("Ingredients") {
                        TextEditor(text: $ingredients)
                            .onKeyPress(.return) {
                                ingredients += "\n• "
                                return .ignored
                            }
                            .border(.gray)
                    }
                    
                    Section("Steps") {
                        TextEditor(text: $steps)
                            .onKeyPress(.return) {
                                steps += "\n• "
                                return .ignored
                            }
                            .border(.gray)
                            .frame(minHeight: 40, maxHeight: 400)
                    }
                    Section("Notes") {
                        TextEditor(text: $notes)
                            .border(.gray)
                    }
                }
                .formStyle(.columns)
                .padding([.leading, .trailing])
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        if title.isEmpty && ingredients == "• " && steps == "• " && notes.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert("Confirm", isPresented: $showAlert) {
                        Button("Delete", role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text("Are you sure you want to cancel your changes?")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        saveRecipe()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    RecipeEditor(recipe: CoreDataManager.instance.sampleRecipe)
}
