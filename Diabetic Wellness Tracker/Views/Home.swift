//
//  Home.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI
import CoreData

struct Home: View {    
    var date = Date()
        .formatted(date: .complete, time: .omitted)
    let manager = CoreDataManager.instance
    
    init() {
        //getPrompt()
    }

    var body: some View {
        NavigationStack {
            ZStack {
                //background
                Background()
                
                //foreground
                VStack {
                    Text("Hey \(UserDefaults.standard.string(forKey: kFirstName) ?? "there")!")
                        .font(.largeTitle)
                    
                    Text("Today is \(date)")
                        .lineLimit(1)
                        .font(.title)
                        .minimumScaleFactor(0.7)
                        .padding([.leading, .trailing], 15)
                    
                    Text("Journal about **\(UserDefaults.standard.string(forKey: kJournalPrompt) ?? "anything")** today")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.white)
                    }

                }
            }
            .navigationBarBackButtonHidden()
        }
    }
    
    func getPrompt() {
        var todaysPrompt: String = UserDefaults.standard.string(forKey: kJournalPrompt) ?? ""
        let currentDate: String = Date().formatted(date: .numeric, time: .omitted)
        let todaysDate: String = UserDefaults.standard.string(forKey: kTodaysDate) ?? currentDate
        print("todays prompt \(todaysPrompt)")
        
        //if the date at initalization of view is not the current date or the daily phrase has not been set, set the phrase
        if todaysDate != currentDate || todaysPrompt.isEmpty {
            manager.downloadJournalPrompts()
            
            @FetchRequest(entity: PromptEntity.entity(), sortDescriptors: []) var prompts: FetchedResults<PromptEntity>
            
            let availablePrompts = prompts.filter { $0.prompt != todaysPrompt }
            todaysPrompt = availablePrompts.randomElement()?.prompt ?? ""
            UserDefaults.standard.set(todaysPrompt, forKey: kJournalPrompt)
        }
    }
}

#Preview {
    Home()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}
