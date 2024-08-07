@_private(sourceFile: "JournalThumbnail.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension PersistenceController {
    @_dynamicReplacement(for: sampleJournal) private var __preview__sampleJournal: JournalEntryEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/JournalThumbnail.swift", line: 61)
        let context = Self.shared.container.viewContext
        let journal = JournalEntryEntity(context: __designTimeSelection(context, "#1064.[4].[0].property.[0].[1].value.arg[0].value"))
        journal.name = __designTimeString("#1064.[4].[0].property.[0].[2].[0]", fallback: "My Journal")
        journal.date = Date()
        journal.text = __designTimeString("#1064.[4].[0].property.[0].[4].[0]", fallback: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        
        return __designTimeSelection(journal, "#1064.[4].[0].property.[0].[5]")
    
#sourceLocation()
    }
}

extension JournalThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/JournalThumbnail.swift", line: 17)
        __designTimeSelection(ZStack {
            __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#1064.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                .foregroundStyle(.white), "#1064.[2].[2].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(VStack {
                __designTimeSelection(HStack(spacing: __designTimeInteger("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: 100)) {
                    __designTimeSelection(Text(journal.name ?? __designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: "Title"))
                        .font(.title), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                    __designTimeSelection(Text(journal.date?.formatted(date: .numeric, time: .omitted) ?? __designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0]", fallback: "Date")), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1]")
                }, "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(Text(journal.text ?? __designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0]", fallback: "Text"))
                    .padding(), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                
                __designTimeSelection(Menu {
                    
                    __designTimeSelection(Button {
                        
                    } label: {
                        __designTimeSelection(Label(__designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "pencil")), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                    }, "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                    
                } label: {
                    __designTimeSelection(Image(systemName: __designTimeString("#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "ellipsis")), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0]")
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing), "#1064.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2]")
            }
            .foregroundStyle(.black)
            .padding(), "#1064.[2].[2].property.[0].[0].arg[0].value.[1]")
        }
        .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#1064.[2].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)), "#1064.[2].[2].property.[0].[0].modifier[0].arg[0].value"))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#1064.[2].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 300))
        .padding(), "#1064.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.JournalThumbnail
#Preview {
    JournalThumbnail(journal: PersistenceController.shared.sampleJournal)
        .previewLayout(.sizeThatFits)
}



