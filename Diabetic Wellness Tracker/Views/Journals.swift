//
//  Journals.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI

func getSortDescriptors() -> [NSSortDescriptor] {
    [
        NSSortDescriptor(key: #keyPath(JournalEntryEntity.date), ascending: true),
     NSSortDescriptor(key: "name", ascending: true)
    ]
}

struct Journals: View {
    
    @EnvironmentObject var manager: CoreDataManager
    @FetchRequest(entity: JournalEntryEntity.entity(), sortDescriptors: getSortDescriptors()) private var journals: FetchedResults<JournalEntryEntity>
    
    var body: some View {
        NavigationStack {
            ZStack {
                //background
                Background()
            
                //foreground
                ScrollView {
                    ForEach(journals) { journal in
                        JournalThumbnail(journal: journal)
                    }
                    .navigationTitle("Journals")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink {
                                EmptyView()
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.white)
                            }
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink {
                                CreateNewJournal()
                            } label: {
                                Image(systemName: "plus")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Journals()
        .environmentObject(CoreDataManager.instance)
}
