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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/SettingsView.swift", line: 14)
        Button(__designTimeString("#16482.[1].[2].property.[0].[0].arg[0].value", fallback: "Delete all recipes")) {
            manager.deleteAllEntities(entityName: __designTimeString("#16482.[1].[2].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "RecipeEntity"), context: manager.context)
        }
        Button(__designTimeString("#16482.[1].[2].property.[0].[1].arg[0].value", fallback: "Delete all journals")) {
            manager.deleteAllEntities(entityName: __designTimeString("#16482.[1].[2].property.[0].[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: "JournalEntryEntity"), context: manager.context)
        }
        Button(__designTimeString("#16482.[1].[2].property.[0].[2].arg[0].value", fallback: "Delete all featured recipes")) {
            manager.deleteAllEntities(entityName: __designTimeString("#16482.[1].[2].property.[0].[2].arg[1].value.[0].modifier[0].arg[0].value", fallback: "FeaturedRecipeEntity"), context: manager.context)
        }
        Button(__designTimeString("#16482.[1].[2].property.[0].[3].arg[0].value", fallback: "Logout")) {
            showAlert.toggle()
        }
        .alert(__designTimeString("#16482.[1].[2].property.[0].[3].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
            Button(__designTimeString("#16482.[1].[2].property.[0].[3].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Logout"), role: .destructive) {
                UserDefaults.standard.set(__designTimeBoolean("#16482.[1].[2].property.[0].[3].modifier[0].arg[2].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: false), forKey: kIsLoggedIn)
            }
        } message: {
            Text(__designTimeString("#16482.[1].[2].property.[0].[3].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you'd like to log out?"))
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.SettingsView
#Preview {
    SettingsView()
}



