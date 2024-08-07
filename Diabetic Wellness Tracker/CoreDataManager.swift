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
        downloadRecipes()
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
    
    func downloadRecipes() {
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
                                let newRecipe = RecipeEntity(context: self.context)
                                newRecipe.name = recipe.name
                                newRecipe.image = recipe.image
                                
                                let ingredients = recipe.ingredients
                                for ingredient in ingredients {
                                    let newIngredient = IngredientEntity(context: self.context)
                                    newIngredient.name = ingredient.name
                                    newIngredient.quantity = ingredient.quantity
                                    
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
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print("error \(error)")
            }
        }
    }
}
