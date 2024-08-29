//
//  JournalEntryEntity+CoreDataProperties.swift
//  
//
//  Created by Jacob Croket on 8/29/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension JournalEntryEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<JournalEntryEntity> {
        return NSFetchRequest<JournalEntryEntity>(entityName: "JournalEntryEntity")
    }

    @NSManaged public var date: Date?
    @NSManaged public var name: String?
    @NSManaged public var text: String?

}

extension JournalEntryEntity : Identifiable {

}
