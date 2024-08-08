//
//  Ingredient.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import Foundation

struct Ingredient: Decodable, Hashable {
    let name: String
    let wholeQuantity: String
    let fractionalQuantity: String
    let units: String
}
