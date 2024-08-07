//
//  SearchJournals.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI

struct SearchJournals: View {
    
    @EnvironmentObject var manager: CoreDataManager
    
    var body: some View {
        ScrollView {
            Text("\(manager.context.registeredObjects)")
        }
    }
}

#Preview {
    SearchJournals()
        .environmentObject(CoreDataManager.instance)
}
