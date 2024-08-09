@_private(sourceFile: "RecipeThumbnail.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 74)
        let context = CoreDataManager.instance.context
        
        let newIngredient1 = IngredientEntity(context: __designTimeSelection(context, "#5532.[4].[0].property.[0].[1].value.arg[0].value"))
        newIngredient1.name = __designTimeString("#5532.[4].[0].property.[0].[2].[0]", fallback: "Strawberries")
        newIngredient1.wholeQuantity = __designTimeString("#5532.[4].[0].property.[0].[3].[0]", fallback: "1")
        newIngredient1.fractionalQuantity = __designTimeString("#5532.[4].[0].property.[0].[4].[0]", fallback: "")
        newIngredient1.units = __designTimeString("#5532.[4].[0].property.[0].[5].[0]", fallback: "cups")
        
        let newIngredient2 = IngredientEntity(context: __designTimeSelection(context, "#5532.[4].[0].property.[0].[6].value.arg[0].value"))
        newIngredient2.name = __designTimeString("#5532.[4].[0].property.[0].[7].[0]", fallback: "Blueberries")
        newIngredient2.wholeQuantity = __designTimeString("#5532.[4].[0].property.[0].[8].[0]", fallback: "2")
        newIngredient2.fractionalQuantity = __designTimeString("#5532.[4].[0].property.[0].[9].[0]", fallback: "1/4")
        newIngredient2.units = __designTimeString("#5532.[4].[0].property.[0].[10].[0]", fallback: "tbsp")
        
        let newRecipe = RecipeEntity(context: __designTimeSelection(context, "#5532.[4].[0].property.[0].[11].value.arg[0].value"))
        newRecipe.name = __designTimeString("#5532.[4].[0].property.[0].[12].[0]", fallback: "Smoothie")
        newRecipe.ingredientsList = [newIngredient1, newIngredient2]
        
        return __designTimeSelection(newRecipe, "#5532.[4].[0].property.[0].[14]")
    
#sourceLocation()
    }
}

extension RecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipeThumbnail.swift", line: 16)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(NavigationLink(destination: {
                __designTimeSelection(RecipeEditor(recipe: __designTimeSelection(recipe, "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            }, label: {
                __designTimeSelection(ZStack {
                    __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                        .foregroundStyle(.white), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                    
                    __designTimeSelection(VStack(alignment: .leading) {
                        __designTimeSelection(Text(recipe.name ?? __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "Title"))
                            .font(.title), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0]")
                        if let ingredients = recipe.ingredientsList as? Set<IngredientEntity> {
                            __designTimeSelection(ForEach(__designTimeSelection(Array(__designTimeSelection(ingredients, "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value.arg[0].value")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[0].value"), id: \.self) { ingredient in
                                __designTimeSelection(HStack {
                                    __designTimeSelection(Text(ingredient.name ?? __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[0]")
                                    __designTimeSelection(Text(ingredient.wholeQuantity ?? __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0]", fallback: "")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[1]")
                                    __designTimeSelection(Text(ingredient.fractionalQuantity ?? __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: "")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[2]")
                                    __designTimeSelection(Text(ingredient.units ?? __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[3].arg[0].value.[0]", fallback: "")), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[3]")
                                }, "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0].arg[2].value.[0]")
                            }, "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[1].value.[1].[0].[0]")
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(), "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                }, "#5532.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }), "#5532.[2].[2].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Menu {
                __designTimeSelection(Button(role: .destructive) {
                    __designTimeSelection(manager.context.delete(__designTimeSelection(recipe, "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                } label: {
                    __designTimeSelection(Label(__designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: "trash")), "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0]")
                }, "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(Button {
                    
                } label: {
                    __designTimeSelection(Label(__designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "pencil")), "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]")
                }, "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                
            } label: {
                __designTimeSelection(Image(systemName: __designTimeString("#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "ellipsis")), "#5532.[2].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing), "#5532.[2].[2].property.[0].[0].arg[0].value.[1]")
        }
        .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#5532.[2].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)), "#5532.[2].[2].property.[0].[0].modifier[0].arg[0].value"))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#5532.[2].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 200))
        .padding(), "#5532.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeThumbnail
#Preview {
    RecipeThumbnail(recipe: CoreDataManager.instance.sampleRecipe)
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}



