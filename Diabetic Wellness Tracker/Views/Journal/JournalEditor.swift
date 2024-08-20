//
//  CreateNewJournal.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI

struct JournalEditor: View {
    
    @StateObject var viewModel = CoreDataManagerViewModel()
    @State var title: String
    @State var text: String
    let date: Date
    
    @State var showAlert: Bool = false
    @Environment(\.dismiss) var dismiss
    
    let journal: JournalEntryEntity?
    init(journal: JournalEntryEntity?) {
        if let journal = journal {
            self.journal = journal
            title = journal.name ?? ""
            date = journal.date ?? Date()
            text = journal.text ?? ""
        } else {
            self.journal = nil
            title = ""
            date = Date()
            text = ""
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Title", text: $title)
                    .font(.title)
                    .textInputAutocapitalization(.words)
                TextField("Journal your thoughts...", text: $text, axis: .vertical)
                Spacer()
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        if title.isEmpty && text.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert("Confirm", isPresented: $showAlert) {
                        Button("Delete", role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text("Are you sure you want to delete your journal?")
                    }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        saveJournal()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    }
    
    func saveJournal() {
        if let journal = journal {
            journal.name = title
            journal.text = text
            journal.date = date
        } else {
            let newJournal = JournalEntryEntity(context: viewModel.manager.context)
            newJournal.name = title
            newJournal.date = date
            newJournal.text = text
        }
        viewModel.manager.saveData()
    }
}

#Preview {
    JournalEditor(journal: CoreDataManager.instance.sampleJournal)
}
