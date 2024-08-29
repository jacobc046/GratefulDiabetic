@_private(sourceFile: "CoreDataManager.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import Foundation
import CoreData

extension CoreDataManagerViewModel {
    @_dynamicReplacement(for: deleteEntity(_:)) private func __preview__deleteEntity(_ entity: NSManagedObject) {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 187)
        manager.context.delete(entity)
        manager.saveData()
    
#sourceLocation()
    }
}

extension CoreDataManagerViewModel {
    @_dynamicReplacement(for: getJournalPrompts()) private func __preview__getJournalPrompts() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 177)
        let request = NSFetchRequest<PromptEntity>(entityName: __designTimeString("#27114.[3].[9].[0].value.[0]", fallback: "PromptEntity"))
        
        do {
            journalPrompts = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManagerViewModel {
    @_dynamicReplacement(for: getFeaturedRecipes()) private func __preview__getFeaturedRecipes() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 166)
        let request = NSFetchRequest<FeaturedRecipeEntity>(entityName: __designTimeString("#27114.[3].[8].[0].value.[0]", fallback: "FeaturedRecipeEntity"))
        request.sortDescriptors = [NSSortDescriptor(keyPath: \FeaturedRecipeEntity.name, ascending: __designTimeBoolean("#27114.[3].[8].[1].[0]", fallback: true))]
        
        do {
            featuredRecipes = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManagerViewModel {
    @_dynamicReplacement(for: getJournals()) private func __preview__getJournals() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 155)
        let request = NSFetchRequest<JournalEntryEntity>(entityName: __designTimeString("#27114.[3].[7].[0].value.[0]", fallback: "JournalEntryEntity"))
        request.sortDescriptors = [NSSortDescriptor(keyPath: \JournalEntryEntity.name, ascending: __designTimeBoolean("#27114.[3].[7].[1].[0]", fallback: true))]
        
        do {
            journals = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManagerViewModel {
    @_dynamicReplacement(for: getRecipes()) private func __preview__getRecipes() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 144)
        let request = NSFetchRequest<RecipeEntity>(entityName: __designTimeString("#27114.[3].[6].[0].value.[0]", fallback: "RecipeEntity"))
        request.sortDescriptors = [NSSortDescriptor(keyPath: \RecipeEntity.name, ascending: __designTimeBoolean("#27114.[3].[6].[1].[0]", fallback: true))]
        
        do {
            recipes = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: deleteAllEntities(entityName:context:)) private func __preview__deleteAllEntities(entityName: String, context: NSManagedObjectContext) {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 113)
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        fetchRequest.includesPropertyValues = __designTimeBoolean("#27114.[2].[9].[1].[0]", fallback: false) // Optimize fetch since we only care about the existence of the objects
        
        do {
            if let objects = try context.fetch(fetchRequest) as? [NSManagedObject] {
                for object in objects {
                    context.delete(object)
                }
                self.saveData()
            }
        } catch let error {
            print("Failed to delete objects from \(entityName): \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: getRecipeSortDescriptors()) private func __preview__getRecipeSortDescriptors() -> [NSSortDescriptor] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 107)
        [
            NSSortDescriptor(key: __designTimeString("#27114.[2].[8].[0].[0].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#27114.[2].[8].[0].[0].arg[1].value", fallback: true))
        ]
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: getJournalSortDescriptors()) private func __preview__getJournalSortDescriptors() -> [NSSortDescriptor] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 100)
        [
            NSSortDescriptor(keyPath: \JournalEntryEntity.date, ascending: __designTimeBoolean("#27114.[2].[7].[0].[0].arg[1].value", fallback: true)),
            NSSortDescriptor(key: __designTimeString("#27114.[2].[7].[0].[1].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#27114.[2].[7].[0].[1].arg[1].value", fallback: true))
        ]
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: saveData()) private func __preview__saveData() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 92)
        do {
            try container.viewContext.save()
        } catch let error {
            print("error \(error)")
        }
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: downloadFeaturedRecipes()) private func __preview__downloadFeaturedRecipes() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 59)
        deleteAllEntities(entityName: __designTimeString("#27114.[2].[5].[0].arg[0].value", fallback: "FeaturedRecipeEntity"), context: self.context)
        
        DispatchQueue.global(qos: .background).async {
            guard let url = URL(string: "https://raw.githubusercontent.com/jacobc046/WellnessData/main/Recipes.json") else { return }
            let request = URLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request) {data, response, error in
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let recipeList = try decoder.decode(Recipes.self, from: data)
                        let recipes = recipeList.recipes
                        
                        self.context.perform {
                            for recipe in recipes {
                                let newRecipe = FeaturedRecipeEntity(context: self.context)
                                newRecipe.name = recipe.name
                                newRecipe.image = recipe.image
                                newRecipe.ingredients = recipe.ingredients
                                newRecipe.steps = recipe.steps
                                newRecipe.notes = recipe.notes
                            }
                        }
                        self.saveData()
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }
            }
            task.resume()
        }
    
#sourceLocation()
    }
}

extension CoreDataManager {
    @_dynamicReplacement(for: downloadJournalPrompts()) private func __preview__downloadJournalPrompts() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/CoreDataManager.swift", line: 31)
        deleteAllEntities(entityName: __designTimeString("#27114.[2].[4].[0].arg[0].value", fallback: "FeaturedRecipeEntity"), context: self.context)
        
        DispatchQueue.global(qos: .background).async {
            guard let url = URL(string: "https://raw.githubusercontent.com/jacobc046/WellnessData/main/JournalPrompts.json") else { return }
            let request = URLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    do {
                        let promptsList = try JSONDecoder().decode(JournalPrompts.self, from: data)
                        let prompts = promptsList.prompts
                        
                        self.context.perform {
                            for prompt in prompts {
                                let newPrompt = PromptEntity(context: self.context)
                                newPrompt.prompt = prompt
                            }
                            self.saveData()
                        }
                    } catch {
                        debugPrint("Error downloading prompts: \n \(error)")
                    }
                }
            }
            task.resume()
        }
    
#sourceLocation()
    }
}

import class Diabetic_Wellness_Tracker.CoreDataManager
import class Diabetic_Wellness_Tracker.CoreDataManagerViewModel

