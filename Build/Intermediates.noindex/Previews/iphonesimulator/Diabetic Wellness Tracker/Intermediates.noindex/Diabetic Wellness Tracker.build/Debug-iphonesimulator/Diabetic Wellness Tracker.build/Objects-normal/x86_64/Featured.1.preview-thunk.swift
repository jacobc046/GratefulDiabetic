@_private(sourceFile: "Featured.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SafariServices
import SwiftUI

extension Featured {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/Featured.swift", line: 13)
        ZStack {
            Background()
            
            List {
                HStack {
                    Link(destination: URL(string: __designTimeString("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "https://www.google.com/?client=safari"))!, label: {
                        Text(__designTimeString("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Newsletter"))
                    })
                    Spacer()
                    Image(systemName: __designTimeString("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: __designTimeInteger("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 60))

                NavigationLink {
                    FeaturedRecipesView()
                } label: {
                    Text(__designTimeString("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Featured Recipes"))
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: __designTimeInteger("#12802.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[1].arg[0].value", fallback: 60))

            }
            .scrollContentBackground(.hidden)
            .listStyle(.inset)
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Featured
#Preview {
    Featured()
}



