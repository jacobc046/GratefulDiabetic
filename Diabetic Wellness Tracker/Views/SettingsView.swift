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
    
    @State var showLoggoutAlert: Bool = false
    @State var showDeleteRecipes: Bool = false
    @State var showDeleteJournals: Bool = false
    
    @State var jounralReminders: Bool = true
    @State var newsletterUpdates: Bool = true
    
    var body: some View {
        @State var firstName: String = (UserDefaults.standard.string(forKey: kFirstName) ?? "")
        @State var lastName: String = UserDefaults.standard.string(forKey: kLastName) ?? ""
        
        Form {
            Section("User Information") {
                TextField("First name", text: $firstName)
                TextField("First name", text: $lastName)
            }
            
            Section("Notifications") {
                Toggle("Reminders to journal", isOn: $jounralReminders)
                Toggle("Newsletter updates", isOn: $newsletterUpdates)
            }
            
            Section("User Data") {
                Button("Delete all recipes...") {
                    showDeleteRecipes.toggle()
                }
                .alert("Confirm", isPresented: $showDeleteRecipes) {
                    Button("Delete recipes", role: .destructive) {
                        manager.deleteAllEntities(entityName: "RecipeEntity", context: manager.context)
                    }
                } message: {
                    Text("Are you sure you'd like to delete all your recipes? This action cannot be undone.")
                }
                
                Button("Delete all journals...") {
                    showDeleteJournals.toggle()
                }
                .alert("Confirm", isPresented: $showDeleteJournals) {
                    Button("Delete journals", role: .destructive) {
                        manager.deleteAllEntities(entityName: "JournalEntryEntity", context: manager.context)
                    }
                } message: {
                    Text("Are you sure you'd like to delete all your journals? This action cannot be undone.")
                }
                
                Button("Logout", role: .destructive) {
                    showLoggoutAlert.toggle()
                }
                .alert("Confirm", isPresented: $showLoggoutAlert) {
                    Button("Logout", role: .destructive) {
                        UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                        dismiss()
                    }
                } message: {
                    Text("Are you sure you'd like to log out?")
                }
            }
        }
        .onDisappear(perform: {
            UserDefaults.standard.set(firstName, forKey: kFirstName)
            UserDefaults.standard.set(lastName, forKey: kLastName)
            //TODO: update reminders and newsletters
        })
    }
}

#Preview {
    SettingsView()
}
