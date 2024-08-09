//
//  JournalThumbnail.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI
import CoreData

struct JournalThumbnail: View {
    
    @EnvironmentObject var manager: CoreDataManager
    let journal: JournalEntryEntity
    
    @State var showActions: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.white)
            
            VStack {
                HStack {
                    Text(journal.name ?? "Title")
                        .font(.title)
                    Spacer()
                    Text(journal.date?.formatted(date: .numeric, time: .omitted) ?? "Date")
                        .frame(alignment: .trailing)
                }
                .padding([.leading, .trailing], 15)
                
                Text(journal.text ?? "Text")
                    .padding([.leading, .trailing], 15)
                
                Button {
                    showActions.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            }
            .foregroundStyle(.black)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding()
        .confirmationDialog("", isPresented: $showActions) {
            Button {
                //journal editor
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            Button(role: .destructive) {
                manager.context.delete(journal)
            } label: {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}

#Preview {
    JournalThumbnail(journal: CoreDataManager
        .instance.sampleJournal)
        .previewLayout(.sizeThatFits)
}

extension CoreDataManager {
    var sampleJournal: JournalEntryEntity {
        let journal = JournalEntryEntity(context: CoreDataManager.instance.context)
        journal.name = "My Journal"
        journal.date = Date()
        journal.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        return journal
    }
}
