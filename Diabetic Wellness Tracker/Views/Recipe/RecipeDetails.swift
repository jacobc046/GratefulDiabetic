//
//  RecipeDetails.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/23/24.
//

import SwiftUI

struct RecipeDetails: View {
    
    let recipe: RecipeEntity
    @State var isEditing: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Background()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        //recipe image
                        ComponentView(heading: "Ingredients", text: recipe.ingredients ?? "")
                        
                        ComponentView(heading: "Steps", text: recipe.steps ?? "")
                        
                        ComponentView(heading: "Notes", text: recipe.notes ?? "")
                    }
                    .padding()
                    
                .navigationTitle(recipe.name ?? "")
                .navigationBarTitleDisplayMode(.large)
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbar {
                ToolbarItem {
                    Button("Edit") {
                        isEditing.toggle()
                    }
                    .foregroundStyle(.primary)
                }
            }
        }
        .navigationDestination(isPresented: $isEditing, destination: { RecipeEditor(recipe: recipe) })
    }
}

#Preview {
    RecipeDetails(recipe: CoreDataManager.instance.sampleRecipe)
}
