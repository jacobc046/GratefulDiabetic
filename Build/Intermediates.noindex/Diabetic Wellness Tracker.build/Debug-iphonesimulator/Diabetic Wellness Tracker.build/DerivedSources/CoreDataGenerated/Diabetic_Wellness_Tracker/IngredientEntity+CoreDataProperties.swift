//
//  IngredientEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/8/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension IngredientEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IngredientEntity> {
        return NSFetchRequest<IngredientEntity>(entityName: "IngredientEntity")
    }

    @NSManaged public var fractionalQuantity: String?
    @NSManaged public var name: String?
    @NSManaged public var units: String?
    @NSManaged public var wholeQuantity: String?
    @NSManaged public var featuredRecipe: FeaturedRecipeEntity?
    @NSManaged public var recipe: RecipeEntity?

}

extension IngredientEntity : Identifiable {

}
