@_private(sourceFile: "RecipeThumbnail.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CoreDataManager {
    @_dynamicReplacement(for: sampleRecipe) private var __preview__sampleRecipe: RecipeEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/RecipeThumbnail.swift", line: 75)
        let context = CoreDataManager.instance.context
        
        let newIngredient1 = IngredientEntity(context: context)
        newIngredient1.name = __designTimeString("#20474.[3].[0].property.[0].[2].[0]", fallback: "Strawberries")
        newIngredient1.quantity = __designTimeString("#20474.[3].[0].property.[0].[3].[0]", fallback: "1")
        
        let newIngredient2 = IngredientEntity(context: context)
        newIngredient2.name = __designTimeString("#20474.[3].[0].property.[0].[5].[0]", fallback: "Blueberries")
        newIngredient2.quantity = __designTimeString("#20474.[3].[0].property.[0].[6].[0]", fallback: "2")
        
        let newRecipe = RecipeEntity(context: context)
        newRecipe.name = __designTimeString("#20474.[3].[0].property.[0].[8].[0]", fallback: "Smoothie")
        newRecipe.image = __designTimeString("#20474.[3].[0].property.[0].[9].[0]", fallback: "https://www.jessicagavin.com/wp-content/uploads/2020/07/berry-smoothie-8-1200-500x500.jpg")
        newRecipe.ingredientsList = [newIngredient1, newIngredient2]
        
        return newRecipe
    
#sourceLocation()
    }
}

extension RecipeThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/RecipeThumbnail.swift", line: 15)
        ZStack {
            RoundedRectangle(cornerRadius: __designTimeFloat("#20474.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                .foregroundStyle(.white)
            
            VStack {
                HStack(alignment: .top ,spacing: __designTimeInteger("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value", fallback: 50)) {
                    VStack {
                        Text(recipe.name ?? __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "Title"))
                            .font(.title)
                        if let ingredients = recipe.ingredientsList as? Set<IngredientEntity> {
                            ForEach(Array(ingredients), id: \.self) { ingredient in
                                HStack {
                                    Text(ingredient.name ?? __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                                    Text(ingredient.quantity ?? __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].[0].[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0]", fallback: ""))
                                }
                            }
                        }
                        
                    }
                    AsyncImage(url: URL(string: recipe.image ?? __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[0].value.arg[0].value.[0]", fallback: ""))) { image in
                        image.image?.resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 125))
                    }
                }
                
                Menu {
                    
                    Button(role: .destructive) {
                        
                    } label: {
                        Label(__designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: "trash"))
                    }
                    Button {
                        
                    } label: {
                        Label(__designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "pencil"))
                    }
                    
                } label: {
                    Image(systemName: __designTimeString("#20474.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "ellipsis"))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            }
            .foregroundStyle(.black)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#20474.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#20474.[1].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 300))
        .padding()
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipeThumbnail
#Preview {
    RecipeThumbnail(recipe: CoreDataManager.instance.sampleRecipe)
}



