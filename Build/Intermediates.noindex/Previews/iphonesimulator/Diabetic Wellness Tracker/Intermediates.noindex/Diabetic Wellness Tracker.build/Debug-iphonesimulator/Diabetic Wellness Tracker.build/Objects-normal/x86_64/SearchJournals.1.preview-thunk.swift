@_private(sourceFile: "SearchJournals.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension SearchJournals {
    @_dynamicReplacement(for: filteredJournals) private var __preview__filteredJournals: [JournalEntryEntity] {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/SearchJournals.swift", line: 42)
        let journalsList: [JournalEntryEntity] = journals.map { $0 } as [JournalEntryEntity]
        if searchText.isEmpty {
            return journalsList
        } else {
            return journalsList.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
        }
    
#sourceLocation()
    }
}

extension SearchJournals {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/SearchJournals.swift", line: 22)
        List {
            ForEach(journals) { journal in
                NavigationLink {
                    JournalEditor(journal: journal)
                } label: {
                    HStack {
                        Text(journal.name ?? __designTimeString("#2539.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                        Spacer()
                        Text(journal.date?.formatted(date: .numeric, time: .omitted) ?? __designTimeString("#2539.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: ""))
                    }
                    .frame(height: __designTimeInteger("#2539.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 50))
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    
#sourceLocation()
    }
}

import enum Diabetic_Wellness_Tracker.ContentType
import struct Diabetic_Wellness_Tracker.SearchJournals
#Preview {
    SearchJournals()
}



