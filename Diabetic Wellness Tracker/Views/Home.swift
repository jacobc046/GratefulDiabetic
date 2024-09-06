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
        getPrompt()
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
                    
                    Text("Journal about **\(UserDefaults.standard.string(forKey: kJournalPrompt)?.lowercased() ?? "anything")** today")
                        .frame(alignment: .center)
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
        print(currentDate)
        print(todaysDate)
        
        //if the date at initalization of view is not the current date or the daily phrase has not been set, set the phrase
        if todaysDate != currentDate || todaysPrompt.isEmpty {
            manager.downloadJournalPrompts()
            
            let request = NSFetchRequest<PromptEntity>(entityName: "PromptEntity")
            var promptStrings: [String] = []
            
            do {
                let fetchedPrompts = try manager.context.fetch(request)
                promptStrings = fetchedPrompts.map { $0.prompt ?? ""}
            } catch let error {
                print("error \(error)")
            }
            
            let availablePrompts = promptStrings.filter { $0 != todaysPrompt }
            todaysPrompt = availablePrompts.randomElement() ?? ""
            UserDefaults.standard.set(todaysPrompt, forKey: kJournalPrompt)
        }
    }
}

#Preview {
    Home()
        .environment(\.managedObjectContext, CoreDataManager.instance.context)
}
