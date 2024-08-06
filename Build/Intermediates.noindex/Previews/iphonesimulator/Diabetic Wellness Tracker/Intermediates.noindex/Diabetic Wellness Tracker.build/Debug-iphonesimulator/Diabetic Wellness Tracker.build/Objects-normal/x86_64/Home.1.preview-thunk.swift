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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Home.swift", line: 19)
        NavigationStack {
            
            ZStack {
                //background
                LinearGradient(colors: [.primary1, .primary1.opacity(__designTimeFloat("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.5))],
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .top)
                
                //foreground
                VStack {
                    Text("Hey \(UserDefaults.standard.string(forKey: kFirstName)!)!")
                        .font(.largeTitle)
                    
                    Text("Today is \(date)")
                        .lineLimit(__designTimeInteger("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 1))
                        .font(.title)
                        .minimumScaleFactor(__designTimeFloat("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 0.7))
                        .padding([.leading, .trailing], __designTimeInteger("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[3].arg[1].value", fallback: 15))
                    
                    Text("Journal about \(prompt) today")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        EmptyView() //settings view
                    } label: {
                        Image(systemName: __designTimeString("#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
                            .foregroundStyle(.white)
                    }

                }
            }
            .navigationBarBackButtonHidden()
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Home
#Preview {
    Home()
}



