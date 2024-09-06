@_private(sourceFile: "Home.swift") import Diabetic_Wellness_Tracker
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
        var todaysPrompt: String = UserDefaults.standard.string(forKey: kJournalPrompt) ?? __designTimeString("#9276.[2].[4].[0].value.[0]", fallback: "")
        let currentDate: String = Date().formatted(date: .numeric, time: .omitted)
        let todaysDate: String = UserDefaults.standard.string(forKey: kTodaysDate) ?? currentDate
        print(currentDate)
        print(todaysDate)
        
        //if the date at initalization of view is not the current date or the daily phrase has not been set, set the phrase
        if todaysDate != currentDate || todaysPrompt.isEmpty {
            manager.downloadJournalPrompts()
            
            let request = NSFetchRequest<PromptEntity>(entityName: __designTimeString("#9276.[2].[4].[5].[0].[1].value.[0]", fallback: "PromptEntity"))
            var promptStrings: [String] = []
            
            do {
                let fetchedPrompts = try manager.context.fetch(request)
                promptStrings = fetchedPrompts.map { $0.prompt ?? ""}
            } catch let error {
                print("error \(error)")
            }
            
            let availablePrompts = promptStrings.filter { $0 != todaysPrompt }
            todaysPrompt = availablePrompts.randomElement() ?? __designTimeString("#9276.[2].[4].[5].[0].[5].[0]", fallback: "")
            UserDefaults.standard.set(todaysPrompt, forKey: kJournalPrompt)
        }
    
#sourceLocation()
    }
}

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Home.swift", line: 21)
        NavigationStack {
            ZStack {
                //background
                Background()
                
                //foreground
                VStack {
                    Text("Hey \(UserDefaults.standard.string(forKey: kFirstName) ?? __designTimeString("#9276.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[0].value.[0]", fallback: "there"))!")
                        .font(.largeTitle)
                    
                    Text("Today is \(date)")
                        .lineLimit(__designTimeInteger("#9276.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 1))
                        .font(.title)
                        .minimumScaleFactor(__designTimeFloat("#9276.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[2].arg[0].value", fallback: 0.7))
                        .padding([.leading, .trailing], __designTimeInteger("#9276.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[3].arg[1].value", fallback: 15))
                    
                    Text("Journal about **\(UserDefaults.standard.string(forKey: kJournalPrompt)?.lowercased() ?? __designTimeString("#9276.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].value.arg[0].value.[0]", fallback: "anything"))** today")
                        .frame(alignment: .center)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: __designTimeString("#9276.[2].[3].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
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
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}



