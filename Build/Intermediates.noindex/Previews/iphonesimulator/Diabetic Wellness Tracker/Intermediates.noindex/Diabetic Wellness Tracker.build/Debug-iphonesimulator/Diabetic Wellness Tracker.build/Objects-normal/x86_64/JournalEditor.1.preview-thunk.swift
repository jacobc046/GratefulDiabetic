@_private(sourceFile: "JournalEditor.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension JournalEditor {
    @_dynamicReplacement(for: saveJournal()) private func __preview__saveJournal() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/JournalEditor.swift", line: 76)
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
    
#sourceLocation()
    }
}

extension JournalEditor {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/JournalEditor.swift", line: 36)
        NavigationStack {
            VStack {
                TextField(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title)
                    .font(.title)
                    .textInputAutocapitalization(.words)
                TextField(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Journal your thoughts..."), text: $text, axis: .vertical)
                Spacer()
            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty && text.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to delete your journal?"))
                    }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#4525.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
                        saveJournal()
                        dismiss()
                    }
                    .bold()
                }
            }
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.JournalEditor
#Preview {
    JournalEditor(journal: CoreDataManager.instance.sampleJournal)
}



