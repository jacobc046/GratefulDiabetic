@_private(sourceFile: "Journals.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Journals {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journals.swift", line: 23)
        NavigationStack {
            ZStack {
                //background
                Background()
            
                //foreground
                ScrollView {
                    ForEach(journals) { journal in
                        JournalThumbnail(journal: journal)
                    }
                    .navigationTitle(__designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Journals"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink {
                                EmptyView()
                            } label: {
                                Image(systemName: __designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                                    .foregroundStyle(.white)
                            }
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink {
                                CreateNewJournal()
                            } label: {
                                Image(systemName: __designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus"))
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
            }
        }
    
#sourceLocation()
    }
}

@_dynamicReplacement(for: getSortDescriptors()) private func __preview__getSortDescriptors() -> [NSSortDescriptor] {
#sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journals.swift", line: 11)
    [
        NSSortDescriptor(key: #keyPath(JournalEntryEntity.date), ascending: __designTimeBoolean("#2613.[1].[0].[0].arg[1].value", fallback: true)),
     NSSortDescriptor(key: __designTimeString("#2613.[1].[0].[1].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#2613.[1].[0].[1].arg[1].value", fallback: true))
    ]

#sourceLocation()
}

import struct Diabetic_Wellness_Tracker.Journals
#Preview {
    Journals()
        .environmentObject(CoreDataManager.instance)
}



