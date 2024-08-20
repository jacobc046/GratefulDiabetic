//
//  SearchJournals.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI

struct SearchJournals: View {
    
    @StateObject var manager = CoreDataManager.instance
    
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
