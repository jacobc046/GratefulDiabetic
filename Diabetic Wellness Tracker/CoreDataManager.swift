//
//  CoreDataManager.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import Foundation
import CoreData

class CoreDataManager: ObservableObject {
    static let instance = CoreDataManager()
    
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Diabetic_Wellness_Tracker")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(filePath: "/dev/null")
        }
        container.loadPersistentStores { description, error in
            if let error = error {
                debugPrint("Unable to load core data \(error)")
            }
        }
        context = container.viewContext
        
        downloadJournalPrompts()
        downloadFeaturedRecipes()
    }
    
    func downloadJournalPrompts() {
        deleteAllEntities(entityName: "PromptEntity", context: self.context)
        
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
                    }
                    self.saveData()
                } catch {
                    debugPrint("Error downloading prompts: \n \(error)")
                }
            }
        }
        task.resume()
    }
    
    func downloadFeaturedRecipes() {
        deleteAllEntities(entityName: "FeaturedRecipeEntity", context: self.context)
        
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
    
    func saveData() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("error \(error)")
        }
    }
    
    func getJournalSortDescriptors() -> [NSSortDescriptor] {
        [
            NSSortDescriptor(key: "date", ascending: true),
            NSSortDescriptor(key: "name", ascending: true)
        ]
    }
    
    func getRecipeSortDescriptors() -> [NSSortDescriptor] {
        [
            NSSortDescriptor(key: "name", ascending: true)
        ]
    }
    
    func deleteAllEntities(entityName: String, context: NSManagedObjectContext) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        fetchRequest.includesPropertyValues = false
        
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
    }
}

extension CoreDataManager {
    static var preview: CoreDataManager {
        let result = CoreDataManager(inMemory: true)
        let viewContext = result.context
        
        //sample recipe
        let newRecipe = RecipeEntity(context: viewContext)
        newRecipe.name = "Smoothie"
        newRecipe.steps = " • line one \n • line two"
        newRecipe.ingredients = " • line one \n • line two"
        newRecipe.notes = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        //sample journal
        let journal = JournalEntryEntity(context: viewContext)
        journal.name = "My Journal"
        journal.date = Date()
        journal.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        do {
            try viewContext.save()
        } catch {
            let error = error
            fatalError("error in CD extension \(error)")
        }
        return result
    }
}


class CoreDataManagerViewModel: ObservableObject {
    let manager = CoreDataManager.instance
    @Published var journalPrompts: [PromptEntity] = []
    @Published var journals: [JournalEntryEntity] = []
    @Published var recipes: [RecipeEntity] = []
    @Published var featuredRecipes: [FeaturedRecipeEntity] = []
    
    init() {
        getRecipes()
        getJournals()
        getFeaturedRecipes()
    }
    
    func getRecipes() {
        let request = NSFetchRequest<RecipeEntity>(entityName: "RecipeEntity")
        request.sortDescriptors = [NSSortDescriptor(keyPath: \RecipeEntity.name, ascending: true)]
        
        do {
            recipes = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    }
    
    func getJournals() {
        let request = NSFetchRequest<JournalEntryEntity>(entityName: "JournalEntryEntity")
        request.sortDescriptors = [NSSortDescriptor(keyPath: \JournalEntryEntity.name, ascending: true)]
        
        do {
            journals = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    }
    
    func getFeaturedRecipes() {
        let request = NSFetchRequest<FeaturedRecipeEntity>(entityName: "FeaturedRecipeEntity")
        request.sortDescriptors = [NSSortDescriptor(keyPath: \FeaturedRecipeEntity.name, ascending: true)]
        
        do {
            featuredRecipes = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    }
    
    func getJournalPrompts() {
        let request = NSFetchRequest<PromptEntity>(entityName: "PromptEntity")
        
        do {
            journalPrompts = try manager.context.fetch(request)
        } catch let error {
            print("error \(error)")
        }
    }
    
    func deleteEntity(_ entity: NSManagedObject) {
        manager.context.delete(entity)
        manager.saveData()
    }
}
