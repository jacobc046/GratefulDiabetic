@_private(sourceFile: "CreateNewJournal.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CreateNewJournal {
    @_dynamicReplacement(for: saveJournal()) private func __preview__saveJournal() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/CreateNewJournal.swift", line: 61)
        let newJournal = JournalEntryEntity(context: manager.context)
        newJournal.name = title
        newJournal.date = Date()
        newJournal.text = text
        manager.saveData()
    
#sourceLocation()
    }
}

extension CreateNewJournal {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/CreateNewJournal.swift", line: 20)
        NavigationStack {
            VStack {
                TextField(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title)
                    .font(.title3)
                    .textInputAutocapitalization(.words)
                TextField(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Journal your thoughts..."), text: $text, axis: .vertical)
                Spacer()
            }
            .padding()
            .navigationTitle(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Create New Journal"))
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Cancel")) {
                        if title.isEmpty && text.isEmpty {
                            dismiss()
                        } else {
                            showAlert.toggle()
                        }
                    }
                    .alert(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: "Confirm"), isPresented: $showAlert) {
                        Button(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[2].value.[0].arg[0].value", fallback: "Delete"), role: .destructive) {
                            dismiss()
                        }
                    } message: {
                        Text(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[3].value.[0].arg[0].value", fallback: "Are you sure you want to delete your journal?"))
                    }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(__designTimeString("#3842.[1].[5].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Save")) {
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

import struct Diabetic_Wellness_Tracker.CreateNewJournal
#Preview {
    CreateNewJournal()
}



