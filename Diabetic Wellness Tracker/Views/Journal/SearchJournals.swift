//
//  SearchJournals.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/7/24.
//

import SwiftUI
import CoreData

enum ContentType {
    case journals, recipes
}

struct SearchJournals: View {
    
    let manager = CoreDataManager.instance
    @State var searchText: String = ""
    @FetchRequest(entity: JournalEntryEntity.entity(), sortDescriptors: CoreDataManager.instance.getJournalSortDescriptors(), predicate: nil) var journals: FetchedResults<JournalEntryEntity>
    
    var body: some View {
        List {
            ForEach(journals) { journal in
                NavigationLink {
                    JournalEditor(journal: journal)
                } label: {
                    HStack {
                        Text(journal.name ?? "")
                        Spacer()
                        Text(journal.date?.formatted(date: .numeric, time: .omitted) ?? "")
                    }
                    .frame(height: 50)
                }
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    }
    
    var filteredJournals: [JournalEntryEntity] {
        let journalsList: [JournalEntryEntity] = journals.map { $0 } as [JournalEntryEntity]
        if searchText.isEmpty {
            return journalsList
        } else {
            return journalsList.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

#Preview {
    SearchJournals()
}
