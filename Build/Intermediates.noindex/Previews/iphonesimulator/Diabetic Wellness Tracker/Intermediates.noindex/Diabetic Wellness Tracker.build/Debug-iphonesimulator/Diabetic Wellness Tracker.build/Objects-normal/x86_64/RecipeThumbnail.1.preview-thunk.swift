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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 76)
        let context = CoreDataManager.instance.context
        
        let newIngredient1 = IngredientEntity(context: context)
        newIngredient1.name = __designTimeString("#5532.[4].[0].property.[0].[2].[0]", fallback: "Strawberries")
        newIngredient1.wholeQuantity = __designTimeString("#5532.[4].[0].property.[0].[3].[0]", fallback: "1")
        newIngredient1.fractionalQuantity = __designTimeString("#5532.[4].[0].property.[0].[4].[0]", fallback: "")
        newIngredient1.units = __designTimeString("#5532.[4].[0].property.[0].[5].[0]", fallback: "cups")
        
        let newIngredient2 = IngredientEntity(context: context)
        newIngredient2.name = __designTimeString("#5532.[4].[0].property.[0].[7].[0]", fallback: "Blueberries")
        newIngredient2.wholeQuantity = __designTimeString("#5532.[4].[0].property.[0].[8].[0]", fallback: "2")
        newIngredient2.fractionalQuantity = __designTimeString("#5532.[4].[0].property.[0].[9].[0]", fallback: "1/4")
        newIngredient2.units = __designTimeString("#5532.[4].[0].property.[0].[10].[0]", fallback: "tbsp")
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = __designTimeString("#5532.[4].[0].property.[0].[12].[0]", fallback: "Smoothie")
        newRecipe.ingredientsList = [newIngredient1, newIngredient2]
        
        return newRecipe
    
#sourceLocation()
    }
}

extension RecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 18)
        NavigationStack {
                ZStack {
                    RoundedRectangle(cornerRadius: __designTimeFloat("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                        .foregroundStyle(.white)
                    
                    VStack(alignment: .leading) {
                        Text(recipe.name ?? __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "Title"))
                            .font(.title)
                        if let ingredients = recipe.ingredientsList as? Set<IngredientEntity> {
                            ForEach(Array(ingredients), id: \.self) { ingredient in
                                HStack {
                                    Text(ingredient.name ?? __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                                    Text(ingredient.wholeQuantity ?? __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0]", fallback: ""))
                                    Text(ingredient.fractionalQuantity ?? __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: ""))
                                    Text(ingredient.units ?? __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[3].arg[0].value.[0]", fallback: ""))
                                }
                            }
                        }
                        
                        Button {
                            showActions.toggle()
                        } label: {
                            Image(systemName: __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "ellipsis"))
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                        .confirmationDialog(__designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[2].arg[0].value", fallback: ""), isPresented: $showActions) {
                            Button {
                                isEditing.toggle()
                            } label: {
                                Label(__designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[2].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[2].arg[2].value.[0].arg[1].value.[0].arg[1].value", fallback: "pencil"))
                            }
                            Button(role: .destructive) {
                                manager.context.delete(recipe)
                            } label: {
                                Label(__designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[2].arg[2].value.[1].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#5532.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].modifier[2].arg[2].value.[1].arg[2].value.[0].arg[1].value", fallback: "trash"))
                            }
                        }
                    }
                    .foregroundStyle(.black)
                    .padding()
                }
                .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#5532.[2].[4].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)))
                .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#5532.[2].[4].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 300))
            .padding()
            .navigationDestination(isPresented: $isEditing, destination: {RecipeEditor(recipe: recipe)})
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeThumbnail
#Preview {
    RecipeThumbnail(recipe: CoreDataManager.instance.sampleRecipe)
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}



