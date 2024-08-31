//
//  JournalEntry.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import Foundation

struct JournalEntry: Decodable {
    let name: String
    let date: String
    let image: String
    let text: String
}
