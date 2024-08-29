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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/Journals.swift", line: 15)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(ZStack {
                //background
                __designTimeSelection(Background(), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            
                //foreground
                __designTimeSelection(ScrollView {
                    __designTimeSelection(ForEach(__designTimeSelection(journals, "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { journal in
                        __designTimeSelection(JournalThumbnail(journal: __designTimeSelection(journal, "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value")), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                    }
                    .navigationTitle(__designTimeString("#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Journals"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        __designTimeSelection(ToolbarItem(placement: .topBarLeading) {
                            __designTimeSelection(NavigationLink {
                                __designTimeSelection(SearchJournals(), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                            } label: {
                                __designTimeSelection(Image(systemName: __designTimeString("#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass")), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                            }
                            .foregroundStyle(.primary), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0]")
                        }, "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0]")
                    }, "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }
                .scrollIndicators(.hidden), "#25653.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#25653.[1].[1].property.[0].[0].arg[0].value.[0]")
        }, "#25653.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Journals
#Preview {
    Journals()
}



