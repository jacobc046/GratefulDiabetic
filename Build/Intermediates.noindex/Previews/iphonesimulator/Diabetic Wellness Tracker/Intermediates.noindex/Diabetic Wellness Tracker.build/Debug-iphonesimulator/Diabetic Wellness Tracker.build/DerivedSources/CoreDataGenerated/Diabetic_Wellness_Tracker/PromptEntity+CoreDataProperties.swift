//
//  PromptEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 9/9/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension PromptEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PromptEntity> {
        return NSFetchRequest<PromptEntity>(entityName: "PromptEntity")
    }

    @NSManaged public var prompt: String?

}

extension PromptEntity : Identifiable {

}
