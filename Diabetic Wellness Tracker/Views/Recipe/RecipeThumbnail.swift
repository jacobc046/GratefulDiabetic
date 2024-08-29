//
//  RecipeThumbnail.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

struct RecipeThumbnail: View {
    @ObservedObject var recipe: RecipeEntity
    
    @StateObject var manager = CoreDataManager.instance
    
    @State var showActions: Bool = false
    @State var isViewing: Bool = false
    @State var isEditing: Bool = false
    
    let columns = [
        GridItem(.fixed(200)),
        GridItem(.fixed(20)),
        GridItem(.fixed(40)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading) {
                    Text(recipe.name ?? "title")
                        .font(.title)
                    
                    Button {
                        showActions.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .confirmationDialog("", isPresented: $showActions) {
                        Button {
                            isEditing.toggle()
                        } label: {
                            Label("Edit", systemImage: "pencil")
                        }
                        Button(role: .destructive) {
                            manager.context.delete(recipe)
                            manager.saveData()
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            .foregroundStyle(.black)
            .padding()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding()
        .navigationDestination(isPresented: $isEditing, destination: { RecipeEditor(recipe: recipe)
        })
    }
}


#Preview {
    RecipeThumbnail(recipe: RecipeEntity(context: CoreDataManager.instance.context))
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}

extension CoreDataManager {
    var sampleRecipe: RecipeEntity {
        let context = Self.instance.context

        // Check if the sample recipe already exists
//        let fetchRequest: NSFetchRequest<RecipeEntity> = RecipeEntity.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", "Smoothie")
//        
//        if let existingRecipe = try? context.fetch(fetchRequest).first {
//            return existingRecipe
//        }
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = "Smoothie"
        newRecipe.steps = " • line one \n • line two"
        newRecipe.ingredients = " • line one \n • line two"
        newRecipe.notes = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        return newRecipe
    }
}
