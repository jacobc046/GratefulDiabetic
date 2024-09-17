//
//  Settings.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/9/24.
//

import SwiftUI
import Foundation

struct SettingsView: View {
    @StateObject var manager = CoreDataManager.instance
    @Environment(\.dismiss) var dismiss
    let notificationsManager = NotificationManager.instance
    
    @State var showLoggoutAlert: Bool = false
    @State var showDeleteRecipes: Bool = false
    @State var showDeleteJournals: Bool = false
    
    @State var firstName: String = (UserDefaults.standard.string(forKey: kFirstName) ?? "")
    @State var lastName: String = UserDefaults.standard.string(forKey: kLastName) ?? ""
    
    @State var newsletterUpdates: Bool = UserDefaults.standard.bool(forKey: kNewsletterUpdateNotifications)
    @State var jounralReminders: Bool = UserDefaults.standard.bool(forKey: kJournalReminderNotifications)
    @State var reminderDate: Date = (UserDefaults.standard.object(forKey: kJournalReminderTime) as? Date ?? Calendar.current.date(bySettingHour: 19, minute: 0, second: 0, of: Date())!)
    
    var body: some View {
            Form {
                Section("User Information") {
                    TextField("First name", text: $firstName)
                    TextField("First name", text: $lastName)
                }
                
                Section("Notifications") {
                    Toggle("Newsletter updates", isOn: $newsletterUpdates)
                    Toggle("Reminders to journal", isOn: $jounralReminders)
                    DatePicker("Reminder time", selection: $reminderDate, displayedComponents: .hourAndMinute)
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
                            notificationsManager.disableJournalReminders()
                            notificationsManager.disableNewsletterUpdateNotifications()
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
                UserDefaults.standard.set(newsletterUpdates, forKey: kNewsletterUpdateNotifications)
                UserDefaults.standard.set(jounralReminders, forKey: kJournalReminderNotifications)
                
                let NSReminderDate = reminderDate as NSDate
                UserDefaults.standard.set(NSReminderDate, forKey: kJournalReminderTime)
        })
    }
}

#Preview {
    SettingsView()
}
