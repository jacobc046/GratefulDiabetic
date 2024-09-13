@_private(sourceFile: "SettingsView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SettingsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/SettingsView.swift", line: 22)
        @State var firstName: String = (UserDefaults.standard.string(forKey: kFirstName) ?? __designTimeString("#2863.[1].[7].property.[0].[0].value.[0].[0]", fallback: ""))
        @State var lastName: String = UserDefaults.standard.string(forKey: kLastName) ?? __designTimeString("#2863.[1].[7].property.[0].[1].value.[0]", fallback: "")
        
        Form {
            Section(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[0].arg[0].value", fallback: "User Information")) {
                TextField(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "First name"), text: $firstName)
                TextField(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "First name"), text: $lastName)
            }
            
            Section(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[1].arg[0].value", fallback: "Notifications")) {
                Toggle(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Reminders to journal"), isOn: $jounralReminders)
                Toggle(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "Newsletter updates"), isOn: $newsletterUpdates)
            }
            
            Section(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[0].value", fallback: "User Data")) {
                Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Delete all recipes...")) {
                    showDeleteRecipes.toggle()
                }
                .alert(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showDeleteRecipes) {
                    Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete recipes"), role: .destructive) {
                        manager.deleteAllEntities(entityName: __designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: "RecipeEntity"), context: manager.context)
                    }
                } message: {
                    Text(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to delete all your recipes? This action cannot be undone."))
                }
                
                Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].arg[0].value", fallback: "Delete all journals...")) {
                    showDeleteJournals.toggle()
                }
                .alert(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showDeleteJournals) {
                    Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete journals"), role: .destructive) {
                        manager.deleteAllEntities(entityName: __designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: "JournalEntryEntity"), context: manager.context)
                    }
                } message: {
                    Text(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to delete all your journals? This action cannot be undone."))
                }
                
                Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].arg[0].value", fallback: "Logout"), role: .destructive) {
                    showLoggoutAlert.toggle()
                }
                .alert(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showLoggoutAlert) {
                    Button(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Logout"), role: .destructive) {
                        UserDefaults.standard.set(__designTimeBoolean("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: false), forKey: kIsLoggedIn)
                        dismiss()
                    }
                } message: {
                    Text(__designTimeString("#2863.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to log out?"))
                }
            }
        }
        .onDisappear(perform: {
            UserDefaults.standard.set(firstName, forKey: kFirstName)
            UserDefaults.standard.set(lastName, forKey: kLastName)
            //TODO: update reminders and newsletters
        })
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.SettingsView
#Preview {
    SettingsView()
}



