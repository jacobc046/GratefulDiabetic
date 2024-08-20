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

extension RecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 38)
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: __designTimeFloat("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading) {
                    Text(recipe.name ?? __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "title"))
                        .font(.title)
                    LazyVGrid(columns: columns, alignment: .leading) {
                        ForEach(Array(sortedIngredients), id: \.self) { ingredient in
                            Text(ingredient.name ?? __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[2].value.[0].arg[2].value.[0].arg[0].value.[0]", fallback: ""))
                            Text(ingredient.wholeQuantity ?? __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[2].value.[0].arg[2].value.[1].arg[0].value.[0]", fallback: ""))
                            Text(ingredient.fractionalQuantity ?? __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[2].value.[0].arg[2].value.[2].arg[0].value.[0]", fallback: ""))
                            Text(ingredient.units ?? __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[2].value.[0].arg[2].value.[3].arg[0].value.[0]", fallback: ""))
                        }
                    }
                    
                    Button {
                        showActions.toggle()
                    } label: {
                        Image(systemName: __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "ellipsis"))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .confirmationDialog(__designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[0].value", fallback: ""), isPresented: $showActions) {
                        Button {
                            isEditing.toggle()
                        } label: {
                            Label(__designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[2].value.[0].arg[1].value.[0].arg[1].value", fallback: "pencil"))
                        }
                        Button(role: .destructive) {
                            manager.context.delete(recipe)
                            manager.saveData()
                        } label: {
                            Label(__designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[2].value.[1].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#10048.[2].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[1].arg[2].value.[1].arg[2].value.[0].arg[1].value", fallback: "trash"))
                        }
                    }
                }
            .foregroundStyle(.black)
            .padding()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#10048.[2].[7].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#10048.[2].[7].property.[0].[0].modifier[1].arg[1].value", fallback: 300))
        .padding()
        .navigationDestination(isPresented: $isEditing, destination: { //RecipeEditor(recipe: recipe)
        })
    
#sourceLocation()
    }
}

extension RecipeThumbnail {
    @_dynamicReplacement(for: sortedIngredients) private var __preview__sortedIngredients: [IngredientEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 22)
        let ingredients = recipe.ingredientsList?.allObjects ?? []
        let ingredientsArr = ingredients as NSArray
        
        guard let sortedIngredients = ingredientsArr.sortedArray(using: sortDescriptors) as NSArray as? [IngredientEntity] else { return [] }
        
        return sortedIngredients
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeThumbnail
#Preview {
    RecipeThumbnail(recipe: RecipeEntity(context: CoreDataManager.instance.context))
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



