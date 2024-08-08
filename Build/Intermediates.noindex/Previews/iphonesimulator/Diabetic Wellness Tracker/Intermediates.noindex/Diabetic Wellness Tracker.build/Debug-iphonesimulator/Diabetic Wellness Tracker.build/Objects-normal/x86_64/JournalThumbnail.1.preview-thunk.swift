@_private(sourceFile: "JournalThumbnail.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension CoreDataManager {
    @_dynamicReplacement(for: sampleJournal) private var __preview__sampleJournal: JournalEntryEntity {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/JournalThumbnail.swift", line: 67)
        let journal = JournalEntryEntity(context: CoreDataManager.instance.context)
        journal.name = __designTimeString("#10535.[4].[0].property.[0].[1].[0]", fallback: "My Journal")
        journal.date = Date()
        journal.text = __designTimeString("#10535.[4].[0].property.[0].[3].[0]", fallback: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        
        return journal
    
#sourceLocation()
    }
}

extension JournalThumbnail {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/JournalThumbnail.swift", line: 17)
        ZStack {
            RoundedRectangle(cornerRadius: __designTimeFloat("#10535.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 25.0))
                .foregroundStyle(.white)
            
            VStack {
                HStack(spacing: __designTimeInteger("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: 100)) {
                    Text(journal.name ?? __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: "Title"))
                        .font(.title)
                    Text(journal.date?.formatted(date: .numeric, time: .omitted) ?? __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0]", fallback: "Date"))
                }
                
                Text(journal.text ?? __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0]", fallback: "Text"))
                    .padding()
                
                Menu {
                    
                    Button {
                        
                    } label: {
                        Label(__designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Edit"), systemImage: __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "pencil"))
                    }
                    Button(role: .destructive) {
                        
                    } label: {
                        Label(__designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].arg[2].value.[0].arg[0].value", fallback: "Delete"), systemImage: __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].arg[2].value.[0].arg[1].value", fallback: "trash"))
                    }
                    
                } label: {
                    Image(systemName: __designTimeString("#10535.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "ellipsis"))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            }
            .foregroundStyle(.black)
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#10535.[2].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 25.0)))
        .frame(maxWidth: .infinity, maxHeight: __designTimeInteger("#10535.[2].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 300))
        .padding()
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.JournalThumbnail
#Preview {
    JournalThumbnail(journal: CoreDataManager
        .instance.sampleJournal)
        .previewLayout(.sizeThatFits)
}



