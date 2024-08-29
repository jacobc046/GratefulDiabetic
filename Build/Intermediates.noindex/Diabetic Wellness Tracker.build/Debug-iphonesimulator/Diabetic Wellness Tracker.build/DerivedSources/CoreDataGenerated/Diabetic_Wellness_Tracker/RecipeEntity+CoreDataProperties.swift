//
//  RecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/27/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension RecipeEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RecipeEntity> {
        return NSFetchRequest<RecipeEntity>(entityName: "RecipeEntity")
    }

    @NSManaged public var ingredients: String?
    @NSManaged public var name: String?
    @NSManaged public var notes: String?
    @NSManaged public var steps: String?
    @NSManaged public var ingredientsList: NSSet?

}

// MARK: Generated accessors for ingredientsList
extension RecipeEntity {

    @objc(addIngredientsListObject:)
    @NSManaged public func addToIngredientsList(_ value: IngredientEntity)

    @objc(removeIngredientsListObject:)
    @NSManaged public func removeFromIngredientsList(_ value: IngredientEntity)

    @objc(addIngredientsList:)
    @NSManaged public func addToIngredientsList(_ values: NSSet)

    @objc(removeIngredientsList:)
    @NSManaged public func removeFromIngredientsList(_ values: NSSet)

}

extension RecipeEntity : Identifiable {

}
