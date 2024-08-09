@_private(sourceFile: "RecipesView.swift") import Diabetic_Wellness_Tracker
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

extension RecipesView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Recipe/RecipesView.swift", line: 17)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(ZStack {
                //background
                __designTimeSelection(Background(), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            
                //foreground
                __designTimeSelection(ScrollView {
                    __designTimeSelection(ForEach(__designTimeSelection(recipes, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { recipe in
                        __designTimeSelection(NavigationLink(destination: {
                            __designTimeSelection(RecipeEditor(recipe: __designTimeSelection(recipe, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        }, label: {
                            __designTimeSelection(RecipeThumbnail(recipe: __designTimeSelection(recipe, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                        }), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                    }
                    .navigationTitle(__designTimeString("#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Recipes"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
                    .toolbar {
                        __designTimeSelection(ToolbarItem(placement: .topBarLeading) {
                            __designTimeSelection(NavigationLink {
                                __designTimeSelection(EmptyView(), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                            } label: {
                                __designTimeSelection(Image(systemName: __designTimeString("#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "magnifyingglass"))
                                    .foregroundStyle(.white), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                            }, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0].arg[1].value.[0]")
                        }, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[4].arg[0].value.[0]")
                    }, "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }
                .scrollIndicators(.hidden), "#3990.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#3990.[2].[2].property.[0].[0].arg[0].value.[0]")
        }, "#3990.[2].[2].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.RecipesView
#Preview {
    RecipesView()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
        .environmentObject(CoreDataManager.instance)
}



