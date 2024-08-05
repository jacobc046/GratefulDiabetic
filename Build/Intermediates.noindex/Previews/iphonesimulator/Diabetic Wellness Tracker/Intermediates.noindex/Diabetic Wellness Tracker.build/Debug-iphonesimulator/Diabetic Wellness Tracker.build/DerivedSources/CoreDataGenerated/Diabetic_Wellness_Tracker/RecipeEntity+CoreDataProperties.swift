//
//  RecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/5/24.
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

}

extension RecipeEntity : Identifiable {

}
