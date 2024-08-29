//
//  RecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/29/24.
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

}

extension RecipeEntity : Identifiable {

}
