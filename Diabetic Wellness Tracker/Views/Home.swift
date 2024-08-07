//
//  Home.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI

struct Home: View {
    
    @State var date = Date()
        .formatted(date: .complete, time: .omitted)
    @State var showSidebar: NavigationSplitViewVisibility = .all
    
    @State var prompt: String = "SOMETHING"
    @StateObject var dataManager = CoreDataManager.instance
    
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                //background
                Background()
                
                //foreground
                VStack {
                    Text("Hey \(UserDefaults.standard.string(forKey: kFirstName) ?? "there") !")
                        .font(.largeTitle)
                    
                    Text("Today is \(date)")
                        .lineLimit(1)
                        .font(.title)
                        .minimumScaleFactor(0.7)
                        .padding([.leading, .trailing], 15)
                    
                    Text("Journal about **\(prompt)** today")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        EmptyView() //settings view
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.white)
                    }

                }
            }
            .navigationBarBackButtonHidden()
        }
        .environmentObject(dataManager)
    }
}

#Preview {
    Home()
}
