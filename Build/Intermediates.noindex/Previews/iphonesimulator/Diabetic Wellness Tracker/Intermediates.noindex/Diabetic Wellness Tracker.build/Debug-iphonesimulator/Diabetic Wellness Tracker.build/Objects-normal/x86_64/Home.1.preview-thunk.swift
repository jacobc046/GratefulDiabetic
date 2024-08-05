@_private(sourceFile: "Home.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Home.swift", line: 17)
        NavigationSplitView(columnVisibility: $showSidebar) {
            NavigationStack {
                ZStack {
                    LinearGradient(colors: [.primary1, .primary1.opacity(__designTimeFloat("#24685.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.5))],
                                   startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    
                    VStack {
                        Text("Hey \(UserDefaults.standard.string(forKey: kFirstName)!)!")
                            .font(.largeTitle)
                        
                        Text("Today is \(date)")
                            .font(.title2)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: __designTimeString("#24685.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
                                .foregroundStyle(.white)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: __designTimeString("#24685.[1].[2].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "line.3.horizontal"))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
        } content: {
            
        } detail: {
            
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Home
#Preview {
    Home()
}



