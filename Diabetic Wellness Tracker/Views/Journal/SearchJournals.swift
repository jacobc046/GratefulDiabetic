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
        TextField("Search by name, or text", text: $searchText)
            .padding()
            .textFieldStyle(.roundedBorder)
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
                    .onChange(of: searchText) {
                        if searchText.isEmpty {
                            journals.nsPredicate = NSPredicate(value: true)
                        } else {
                            journals.nsPredicate = NSPredicate(format: "name CONTAINS[cd] %@ OR text CONTAINS[cd] %@", searchText, searchText)
                        }
                    }
                }
            }
        }
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
    }
}

#Preview {
    SearchJournals()
}
