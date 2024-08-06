//
//  CoreDataManager.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import Foundation
import CoreData

class CoreDataManager {
    static let instance = CoreDataManager()
    
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "TrackerModel")
        container.loadPersistentStores { description, error in
            if let error = error {
                debugPrint("Unable to load core data \(error)")
            }
        }
        context = container.viewContext
    }
    
    func saveData() {
        do {
           try container.viewContext.save()
        } catch let error {
            print("error \(error)")
        }
    }
}

//
//class CoreDataRelationshipsManager {
//    let manager = CoreDataManager.instance
//}
