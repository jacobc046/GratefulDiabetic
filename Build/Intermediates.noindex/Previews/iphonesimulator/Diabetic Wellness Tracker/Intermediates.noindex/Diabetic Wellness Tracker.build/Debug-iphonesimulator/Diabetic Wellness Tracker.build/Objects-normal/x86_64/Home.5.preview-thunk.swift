@_private(sourceFile: "Home.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(NavigationStack {
            
            __designTimeSelection(ZStack {
                //background
                __designTimeSelection(LinearGradient(colors: [.primary1, .primary1.opacity(__designTimeFloat("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.5))],
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .top), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                //foreground
                __designTimeSelection(VStack {
                    __designTimeSelection(Text("Hey \(UserDefaults.standard.string(forKey: kFirstName)!)!")
                        .font(.largeTitle), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                    
                    __designTimeSelection(Text("Today is \(__designTimeSelection(date, "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))")
                        .lineLimit(__designTimeInteger("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 1))
                        .font(.title)
                        .minimumScaleFactor(__designTimeFloat("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 0.7))
                        .padding([.leading, .trailing], __designTimeInteger("#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[3].arg[1].value", fallback: 15)), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    
                    __designTimeSelection(Text("Journal about \(__designTimeSelection(prompt, "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].value.arg[0].value")) today"), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }, "#24685.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }
            .toolbar {
                __designTimeSelection(ToolbarItem(placement: .topBarTrailing) {
                    __designTimeSelection(NavigationLink {
                        __designTimeSelection(EmptyView(), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]") //settings view
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
                            .foregroundStyle(.white), "#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0]")

                }, "#24685.[1].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }
            .navigationBarBackButtonHidden(), "#24685.[1].[3].property.[0].[0].arg[0].value.[0]")
        }, "#24685.[1].[3].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Home
#Preview {
    Home()
}



