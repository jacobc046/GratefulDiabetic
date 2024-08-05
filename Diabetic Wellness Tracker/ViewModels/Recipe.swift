//
//  Recipe.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import Foundation

struct Recipe: Decodable {
    let name: String
    let image: String
    let ingredients: [Ingredient]
    let isFavorite: Bool
}

struct Recipes: Decodable {
    let recipes: [Recipe]
}
