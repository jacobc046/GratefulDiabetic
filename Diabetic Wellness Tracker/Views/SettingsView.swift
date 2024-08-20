//
//  Settings.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/9/24.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var manager = CoreDataManager.instance
    var body: some View {
        Button("Delete all recipes") {
            manager.deleteAllEntities(entityName: "RecipeEntity", context: manager.context)
        }
        Button("Delete all journals") {
            manager.deleteAllEntities(entityName: "JournalEntryEntity", context: manager.context)
        }
        Button("Logout") {
            UserDefaults.standard.set(false, forKey: kIsLoggedIn)
        }
    }
}

#Preview {
    SettingsView()
}
