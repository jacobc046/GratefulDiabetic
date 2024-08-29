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
    let ingredients: String
    let steps: String
    let notes: String
}

struct Recipes: Decodable {
    let recipes: [Recipe]
}
