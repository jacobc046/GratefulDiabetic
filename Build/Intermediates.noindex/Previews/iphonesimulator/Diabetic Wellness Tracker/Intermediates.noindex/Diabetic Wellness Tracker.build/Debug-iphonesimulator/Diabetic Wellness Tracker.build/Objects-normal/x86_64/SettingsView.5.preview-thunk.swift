@_private(sourceFile: "SettingsView.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        @State var firstName: String = (UserDefaults.standard.string(forKey: kFirstName) ?? __designTimeString("#871.[1].[7].property.[0].[0].value.[0].[0]", fallback: ""))
        @State var lastName: String = UserDefaults.standard.string(forKey: kLastName) ?? __designTimeString("#871.[1].[7].property.[0].[1].value.[0]", fallback: "")
        
        __designTimeSelection(Form {
            __designTimeSelection(Section(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[0].value", fallback: "User Information")) {
                __designTimeSelection(TextField(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "First name"), text: __designTimeSelection($firstName, "#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[0].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[0]")
                __designTimeSelection(TextField(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "First name"), text: __designTimeSelection($lastName, "#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[1].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[0].arg[1].value.[1]")
            }, "#871.[1].[7].property.[0].[2].arg[0].value.[0]")
            
            __designTimeSelection(Section(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[0].value", fallback: "Notifications")) {
                __designTimeSelection(Toggle(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Reminders to journal"), isOn: __designTimeSelection($jounralReminders, "#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[0].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[0]")
                __designTimeSelection(Toggle(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "Newsletter updates"), isOn: __designTimeSelection($newsletterUpdates, "#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[1].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[1].arg[1].value.[1]")
            }, "#871.[1].[7].property.[0].[2].arg[0].value.[1]")
            
            __designTimeSelection(Section(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[0].value", fallback: "User Data")) {
                __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Delete all recipes...")) {
                    __designTimeSelection(showDeleteRecipes.toggle(), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].arg[1].value.[0]")
                }
                .alert(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: __designTimeSelection($showDeleteRecipes, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[1].value")) {
                    __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete recipes"), role: .destructive) {
                        __designTimeSelection(manager.deleteAllEntities(entityName: __designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: "RecipeEntity"), context: __designTimeSelection(manager.context, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[2].value.[0]")
                    }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[2].value.[0]")
                }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0]") message: {
                    __designTimeSelection(Text(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to delete all your recipes? This action cannot be undone.")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[3].value.[0]")
                }
                
                __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].arg[0].value", fallback: "Delete all journals...")) {
                    __designTimeSelection(showDeleteJournals.toggle(), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].arg[1].value.[0]")
                }
                .alert(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: __designTimeSelection($showDeleteJournals, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[1].value")) {
                    __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete journals"), role: .destructive) {
                        __designTimeSelection(manager.deleteAllEntities(entityName: __designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: "JournalEntryEntity"), context: __designTimeSelection(manager.context, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0].arg[2].value.[0]")
                    }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[2].value.[0]")
                }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1]") message: {
                    __designTimeSelection(Text(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to delete all your journals? This action cannot be undone.")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[1].modifier[0].arg[3].value.[0]")
                }
                
                __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].arg[0].value", fallback: "Logout"), role: .destructive) {
                    __designTimeSelection(showLoggoutAlert.toggle(), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].arg[2].value.[0]")
                }
                .alert(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: __designTimeSelection($showLoggoutAlert, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[1].value")) {
                    __designTimeSelection(Button(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Logout"), role: .destructive) {
                        __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: false), forKey: __designTimeSelection(kIsLoggedIn, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[1].value")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[2].value.[0]")
                        __designTimeSelection(dismiss(), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0].arg[2].value.[1]")
                    }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[2].value.[0]")
                }, "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2]") message: {
                    __designTimeSelection(Text(__designTimeString("#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to log out?")), "#871.[1].[7].property.[0].[2].arg[0].value.[2].arg[1].value.[2].modifier[0].arg[3].value.[0]")
                }
            }, "#871.[1].[7].property.[0].[2].arg[0].value.[2]")
        }
        .onDisappear(perform: {
            __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(firstName, "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[0].modifier[0].arg[0].value"), forKey: __designTimeSelection(kFirstName, "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[0].modifier[0].arg[1].value")), "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[0]")
            __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(lastName, "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[1].modifier[0].arg[0].value"), forKey: __designTimeSelection(kLastName, "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[1].modifier[0].arg[1].value")), "#871.[1].[7].property.[0].[2].modifier[0].arg[0].value.[1]")
            //TODO: update reminders and newsletters
        }), "#871.[1].[7].property.[0].[2]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.SettingsView
#Preview {
    SettingsView()
}



