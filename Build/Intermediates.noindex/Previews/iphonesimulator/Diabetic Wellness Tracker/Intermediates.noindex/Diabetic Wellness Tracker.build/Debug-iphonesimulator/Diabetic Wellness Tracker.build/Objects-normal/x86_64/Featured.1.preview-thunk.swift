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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Featured/Featured.swift", line: 14)
        ZStack {
            Background()
            
            List {
                HStack {
                    Text(__designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Newsletter"))
                    .onTapGesture {
                        showAlert.toggle()
                    }
                    .alert(__designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "You are about to navigate away from the app!"), isPresented: $showAlert) {
                        Link(destination: URL(string: __designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[2].value.[0].arg[0].value.[0]", fallback: "https://www.google.com/?client=safari"))!, label: {
                            Text(__designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: "Confirm"))
                        })
                        Button(__designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[2].value.[1].arg[0].value", fallback: "Cancel")) {
                            showAlert = __designTimeBoolean("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[2].value.[1].arg[1].value.[0].[0]", fallback: false)
                        }
                    }
                    Spacer()
                    Image(systemName: __designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: __designTimeInteger("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value", fallback: 60))

                NavigationLink {
                    FeaturedRecipesView()
                } label: {
                    Text(__designTimeString("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Featured Recipes"))
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: __designTimeInteger("#6080.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[1].arg[0].value", fallback: 60))

            }
            .scrollContentBackground(.hidden)
            .listStyle(.inset)
            
            .navigationBarBackButtonHidden()
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Featured
#Preview {
    Featured()
}



