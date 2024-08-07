@_private(sourceFile: "Journals.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Journals {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journals.swift", line: 23)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(ZStack {
                //background
                __designTimeSelection(Background(), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            
                //foreground
                __designTimeSelection(ScrollView {
                    __designTimeSelection(ForEach(__designTimeSelection(journals, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { journal in
                        __designTimeSelection(JournalThumbnail(journal: __designTimeSelection(journal, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value")), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                    }
                    
                    
                        .navigationTitle(__designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Journals"))
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbarBackground(.visible, for: .navigationBar)
                        .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                        .toolbar {
                            __designTimeSelection(ToolbarItem(placement: .topBarLeading) {
                                __designTimeSelection(NavigationLink {
                                    __designTimeSelection(EmptyView(), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                } label: {
                                    __designTimeSelection(Image(systemName: __designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                                        .foregroundStyle(.white), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0]")
                            }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0]")
                            __designTimeSelection(ToolbarItem(placement: .topBarTrailing) {
                                __designTimeSelection(NavigationLink {
                                    __designTimeSelection(EmptyView(), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0]")
                                } label: {
                                    __designTimeSelection(Image(systemName: __designTimeString("#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus"))
                                        .foregroundStyle(.white), "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                                }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1].arg[1].value.[0]")
                            }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[1]")
                    }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#2613.[2].[2].property.[0].[0].arg[0].value.[0]")
        }, "#2613.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

@_dynamicReplacement(for: getSortDescriptors()) private func __preview__getSortDescriptors() -> [NSSortDescriptor] {
#sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journals.swift", line: 11)
    [
        __designTimeSelection(NSSortDescriptor(key: #keyPath(__designTimeSelection(JournalEntryEntity.date, "#2613.[1].[0].[0].arg[0].value.arg[0].value")), ascending: __designTimeBoolean("#2613.[1].[0].[0].arg[1].value", fallback: true)), "#2613.[1].[0].[0]"),
     __designTimeSelection(NSSortDescriptor(key: __designTimeString("#2613.[1].[0].[1].arg[0].value", fallback: "name"), ascending: __designTimeBoolean("#2613.[1].[0].[1].arg[1].value", fallback: true)), "#2613.[1].[0].[1]")
    ]

#sourceLocation()
}

import struct Diabetic_Wellness_Tracker.Journals
#Preview {
    Journals()
}



