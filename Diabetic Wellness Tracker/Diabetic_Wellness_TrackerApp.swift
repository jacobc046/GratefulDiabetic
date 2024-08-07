//
//  Diabetic_Wellness_TrackerApp.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI

@main
struct Diabetic_Wellness_TrackerApp: App {
    let persistenceController = CoreDataManager.instance
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CoreDataManager.instance)
        }
    }
}
