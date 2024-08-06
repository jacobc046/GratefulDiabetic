//
//  Download Manager.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import Foundation
import CoreData

class DownloadManager {
    static let instance = DownloadManager()
    //let manager = CoreDataManager.instance
    
    init() {
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
                        
                        for prompt in prompts {
                            let newPrompt = PromptEntity(context: CoreDataManager.instance.context)
                            newPrompt.prompt = prompt
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
                        
                        for recipe in recipes {
                            let newRecipe = RecipeEntity(context: CoreDataManager.instance.context)
                            newRecipe.name = recipe.name
                            newRecipe.image = recipe.image
                            
                            let ingredients = recipe.ingredients
                            newRecipe.ingredientsList = [ingredients]
                        }
                        
                        print(recipeList)
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }
            }
            task.resume()
        }
    }

}
