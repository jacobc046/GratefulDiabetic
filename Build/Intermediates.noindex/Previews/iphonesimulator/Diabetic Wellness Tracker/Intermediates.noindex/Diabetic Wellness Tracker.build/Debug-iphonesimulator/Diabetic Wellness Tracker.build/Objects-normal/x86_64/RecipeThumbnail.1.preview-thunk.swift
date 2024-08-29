@_private(sourceFile: "RecipeThumbnail.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension CoreDataManager {
    @_dynamicReplacement(for: sampleRecipe) private var __preview__sampleRecipe: RecipeEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 79)
        let context = Self.instance.context

        // Check if the sample recipe already exists
//        let fetchRequest: NSFetchRequest<RecipeEntity> = RecipeEntity.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", "Smoothie")
//        
//        if let existingRecipe = try? context.fetch(fetchRequest).first {
//            return existingRecipe
//        }
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = __designTimeString("#4204.[4].[0].property.[0].[2].[0]", fallback: "Smoothie")
        newRecipe.steps = " • line one \n • line two"
        newRecipe.ingredients = " • line one \n • line two"
        newRecipe.notes = __designTimeString("#4204.[4].[0].property.[0].[5].[0]", fallback: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        
        return newRecipe
    
#sourceLocation()
    }
}

extension RecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 28)
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeFloat("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading) {
                    Text(recipe.name ?? __designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "title"))
                        .font(.title)
                    
                    Button {
                        showActions.toggle()
                    } label: {
                        Image(systemName: __designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "ellipsis"))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .confirmationDialog(__designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[0].value", fallback: ""), isPresented: $showActions) {
                        Button {
                            isEditing.toggle()
                        } label: {
                            Label(__designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[2].value.[0].arg[1].value.[0].arg[1].value", fallback: "pencil"))
                        }
                        Button(role: .destructive) {
                            manager.context.delete(recipe)
                            manager.saveData()
                        } label: {
                            Label(__designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[2].value.[1].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#4204.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[2].value.[1].arg[2].value.[0].arg[1].value", fallback: "trash"))
                        }
                    }
                }
            .foregroundStyle(.black)
            .padding()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#4204.[2].[6].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#4204.[2].[6].property.[0].[0].modifier[1].arg[1].value", fallback: 300))
        .padding()
        .navigationDestination(isPresented: $isEditing, destination: { RecipeEditor(recipe: recipe)
        })
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeThumbnail
#Preview {
    RecipeThumbnail(recipe: RecipeEntity(context: CoreDataManager.instance.context))
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



