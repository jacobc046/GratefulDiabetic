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
    
    init() {
        container = NSPersistentContainer(name: "Diabetic_Wellness_Tracker")
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
    }
    
    func downloadFeaturedRecipes() {
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
                                
                                let ingredients = recipe.ingredients
                                for ingredient in ingredients {
                                    let newIngredient = IngredientEntity(context: self.context)
                                    newIngredient.name = ingredient.name
                                    newIngredient.wholeQuantity = ingredient.wholeQuantity
                                    newIngredient.fractionalQuantity = ingredient.fractionalQuantity
                                    newIngredient.units = ingredient.units
                                    
                                    newRecipe.addToIngredientsList(newIngredient)
                                }
                            }
                            self.saveData()
                        }
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }
            }
            task.resume()
        }
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
            NSSortDescriptor(keyPath: \JournalEntryEntity.date, ascending: true),
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
        fetchRequest.includesPropertyValues = false // Optimize fetch since we only care about the existence of the objects
        
        do {
            if let objects = try context.fetch(fetchRequest) as? [NSManagedObject] {
                for object in objects {
                    context.delete(object)
                }
                try context.save() // Save changes after deleting
            }
        } catch let error {
            print("Failed to delete objects from \(entityName): \(error)")
        }
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
