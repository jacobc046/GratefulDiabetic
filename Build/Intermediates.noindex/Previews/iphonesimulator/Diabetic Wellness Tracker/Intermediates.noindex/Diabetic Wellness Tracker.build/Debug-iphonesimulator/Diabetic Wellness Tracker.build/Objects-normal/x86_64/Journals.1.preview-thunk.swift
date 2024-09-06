@_private(sourceFile: "Journals.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import CoreData
import SwiftUI

extension Journals {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Journal/Journals.swift", line: 16)
        NavigationStack {
            ZStack {
                //background
                Background()
            
                //foreground
                ScrollView {
                    ForEach(journals) { journal in
                        NavigationLink {
                            JournalEditor(journal: journal)
                        } label: {
                            JournalThumbnail(journal: journal)
                        }
                    }
                    .navigationTitle(__designTimeString("#25935.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Journals"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            NavigationLink {
                                SearchJournals()
                            } label: {
                                Image(systemName: __designTimeString("#25935.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                            }
                            .foregroundStyle(.primary)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .navigationBarBackButtonHidden()
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Journals
#Preview {
    Journals()
}



