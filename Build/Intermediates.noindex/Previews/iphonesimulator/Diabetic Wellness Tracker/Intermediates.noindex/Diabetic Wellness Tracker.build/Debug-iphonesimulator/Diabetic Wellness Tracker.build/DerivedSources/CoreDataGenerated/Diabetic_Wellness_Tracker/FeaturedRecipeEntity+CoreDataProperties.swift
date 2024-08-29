//
//  FeaturedRecipeEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/29/24.
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
    @NSManaged public var ingredients: String?
    @NSManaged public var name: String?
    @NSManaged public var notes: String?
    @NSManaged public var steps: String?

}

extension FeaturedRecipeEntity : Identifiable {

}
