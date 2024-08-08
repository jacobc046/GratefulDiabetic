//
//  Journals.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI

struct Journals: View {
    
    @EnvironmentObject var manager: CoreDataManager
    @FetchRequest(entity: JournalEntryEntity.entity(), sortDescriptors: CoreDataManager.instance.getJournalSortDescriptors(), animation: .default) private var journals: FetchedResults<JournalEntryEntity>
    
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
                                SearchJournals()
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    Journals()
        .environment(\.managedObjectContext, CoreDataManager.instance.container.viewContext)
        .environmentObject(CoreDataManager.instance)
}
