//
//  Settings.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/9/24.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var manager = CoreDataManager.instance
    @Environment(\.dismiss) var dismiss
    @State var showAlert: Bool = false
    
    var body: some View {
        Button("Delete all recipes") {
            manager.deleteAllEntities(entityName: "RecipeEntity", context: manager.context)
        }
        Button("Delete all journals") {
            manager.deleteAllEntities(entityName: "JournalEntryEntity", context: manager.context)
        }
        Button("Delete all featured recipes") {
            manager.deleteAllEntities(entityName: "FeaturedRecipeEntity", context: manager.context)
        }
        Button("Logout") {
            showAlert.toggle()
        }
        .alert("Confirm", isPresented: $showAlert) {
            Button("Logout", role: .destructive) {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                dismiss()
            }
        } message: {
            Text("Are you sure you'd like to log out?")
        }
    }
}

#Preview {
    SettingsView()
}
