//
//  CreateNewJournal.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI

struct JournalEditor: View {
    
    @State var title: String = ""
    @State var text: String = ""
    
    @State var showAlert: Bool = false
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var manager: CoreDataManager
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Title", text: $title)
                    .font(.title3)
                    .textInputAutocapitalization(.words)
                TextField("Journal your thoughts...", text: $text, axis: .vertical)
                Spacer()
            }
            .padding()
            .navigationTitle("Create New Journal")
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
        let newJournal = JournalEntryEntity(context: manager.context)
        newJournal.name = title
        newJournal.date = Date()
        newJournal.text = text
        manager.saveData()
    }
}

#Preview {
    JournalEditor()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}
