@_private(sourceFile: "Home.swift") import Diabetic_Wellness_Tracker
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

extension Home {
    @_dynamicReplacement(for: getPrompt()) private func __preview__getPrompt() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Home.swift", line: 57)
        var todaysPrompt: String = UserDefaults.standard.string(forKey: kJournalPrompt) ?? __designTimeString("#11546.[2].[4].[0].value.[0]", fallback: "")
        let currentDate: String = Date().formatted(date: .numeric, time: .omitted)
        let todaysDate: String = UserDefaults.standard.string(forKey: kTodaysDate) ?? currentDate
        __designTimeSelection(print("todays prompt \(__designTimeSelection(todaysPrompt, "#11546.[2].[4].[3].arg[0].value.[1].value.arg[0].value"))"), "#11546.[2].[4].[3]")
        
        //if the date at initalization of view is not the current date or the daily phrase has not been set, set the phrase
        if todaysDate != currentDate || todaysPrompt.isEmpty {
            __designTimeSelection(manager.downloadJournalPrompts(), "#11546.[2].[4].[4].[0].[0]")
            
            @FetchRequest(entity: PromptEntity.entity(), sortDescriptors: []) var prompts: FetchedResults<PromptEntity>
            
            let availablePrompts = prompts.filter { $0.prompt != todaysPrompt }
            __designTimeSelection(print(__designTimeSelection(availablePrompts, "#11546.[2].[4].[4].[0].[3].arg[0].value")), "#11546.[2].[4].[4].[0].[3]")
            todaysPrompt = availablePrompts.randomElement()?.prompt ?? __designTimeString("#11546.[2].[4].[4].[0].[4].[0]", fallback: "")
            __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(todaysPrompt, "#11546.[2].[4].[4].[0].[5].modifier[0].arg[0].value"), forKey: __designTimeSelection(kJournalPrompt, "#11546.[2].[4].[4].[0].[5].modifier[0].arg[1].value")), "#11546.[2].[4].[4].[0].[5]")
        }
    
#sourceLocation()
    }
}

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Home.swift", line: 22)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(ZStack {
                //background
                __designTimeSelection(Background(), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                //foreground
                __designTimeSelection(VStack {
                    __designTimeSelection(Text("Hey \(UserDefaults.standard.string(forKey: kFirstName) ?? __designTimeString("#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[0].value.[0]", fallback: "there"))!")
                        .font(.largeTitle), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                    
                    __designTimeSelection(Text("Today is \(__designTimeSelection(date, "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))")
                        .lineLimit(__designTimeInteger("#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 1))
                        .font(.title)
                        .minimumScaleFactor(__designTimeFloat("#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 0.7))
                        .padding([.leading, .trailing], __designTimeInteger("#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[3].arg[1].value", fallback: 15)), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    
                    __designTimeSelection(Text("Journal about **\(UserDefaults.standard.string(forKey: kJournalPrompt) ?? __designTimeString("#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].value.arg[0].value.[0]", fallback: "anything"))** today"), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }, "#11546.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }
            .toolbar {
                __designTimeSelection(ToolbarItem(placement: .topBarTrailing) {
                    __designTimeSelection(NavigationLink {
                        __designTimeSelection(SettingsView(), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#11546.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
                            .foregroundStyle(.white), "#11546.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#11546.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0]")

                }, "#11546.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
            }
            .navigationBarBackButtonHidden(), "#11546.[2].[3].property.[0].[0].arg[0].value.[0]")
        }, "#11546.[2].[3].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Home
#Preview {
    Home()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



