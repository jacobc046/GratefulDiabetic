//
//  RecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/6/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension RecipeEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RecipeEntity> {
        return NSFetchRequest<RecipeEntity>(entityName: "RecipeEntity")
    }

    @NSManaged public var image: String?
    @NSManaged public var isFavorite: Bool
    @NSManaged public var name: String?
    @NSManaged public var ingredientsList: NSOrderedSet?

}

// MARK: Generated accessors for ingredientsList
extension RecipeEntity {

    @objc(insertObject:inIngredientsListAtIndex:)
    @NSManaged public func insertIntoIngredientsList(_ value: IngredientEntity, at idx: Int)

    @objc(removeObjectFromIngredientsListAtIndex:)
    @NSManaged public func removeFromIngredientsList(at idx: Int)

    @objc(insertIngredientsList:atIndexes:)
    @NSManaged public func insertIntoIngredientsList(_ values: [IngredientEntity], at indexes: NSIndexSet)

    @objc(removeIngredientsListAtIndexes:)
    @NSManaged public func removeFromIngredientsList(at indexes: NSIndexSet)

    @objc(replaceObjectInIngredientsListAtIndex:withObject:)
    @NSManaged public func replaceIngredientsList(at idx: Int, with value: IngredientEntity)

    @objc(replaceIngredientsListAtIndexes:withIngredientsList:)
    @NSManaged public func replaceIngredientsList(at indexes: NSIndexSet, with values: [IngredientEntity])

    @objc(addIngredientsListObject:)
    @NSManaged public func addToIngredientsList(_ value: IngredientEntity)

    @objc(removeIngredientsListObject:)
    @NSManaged public func removeFromIngredientsList(_ value: IngredientEntity)

    @objc(addIngredientsList:)
    @NSManaged public func addToIngredientsList(_ values: NSOrderedSet)

    @objc(removeIngredientsList:)
    @NSManaged public func removeFromIngredientsList(_ values: NSOrderedSet)

}

extension RecipeEntity : Identifiable {

}
