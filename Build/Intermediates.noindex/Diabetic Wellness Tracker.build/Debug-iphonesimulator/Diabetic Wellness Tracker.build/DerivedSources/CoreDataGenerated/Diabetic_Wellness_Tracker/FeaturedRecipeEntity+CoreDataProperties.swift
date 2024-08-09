//
//  FeaturedRecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/8/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension FeaturedRecipeEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FeaturedRecipeEntity> {
        return NSFetchRequest<FeaturedRecipeEntity>(entityName: "FeaturedRecipeEntity")
    }

    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var ingredientsList: NSSet?

}

// MARK: Generated accessors for ingredientsList
extension FeaturedRecipeEntity {

    @objc(addIngredientsListObject:)
    @NSManaged public func addToIngredientsList(_ value: IngredientEntity)

    @objc(removeIngredientsListObject:)
    @NSManaged public func removeFromIngredientsList(_ value: IngredientEntity)

    @objc(addIngredientsList:)
    @NSManaged public func addToIngredientsList(_ values: NSSet)

    @objc(removeIngredientsList:)
    @NSManaged public func removeFromIngredientsList(_ values: NSSet)

}

extension FeaturedRecipeEntity : Identifiable {

}
