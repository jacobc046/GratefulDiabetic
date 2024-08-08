//
//  CreateNewRecipe.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI

struct CreateNewRecipe: View {
    
    @State var title: String = ""
    @State var text: String = ""
    
    @State var showAlert: Bool = false
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var manager: CoreDataManager
    
    @State var selection: Int = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Title", text: $title)
                    .font(.title3)
                    .textInputAutocapitalization(.words)
            }
            .padding()
            .navigationTitle("Create New Recipe")
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        if title.isEmpty && text.isEmpty {
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
                        Text("Are you sure you want to delete your recipe?")
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
    }
    
    func saveRecipe() {
        let newRecipe = RecipeEntity(context: manager.context)
        newRecipe.name = title
        //newRecipe.ingredientsList
        manager.saveData()
    }
}

#Preview {
    CreateNewRecipe()
}
