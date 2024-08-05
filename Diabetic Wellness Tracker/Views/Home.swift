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
    
    var body: some View {
        NavigationSplitView(columnVisibility: $showSidebar) {
            NavigationStack {
                ZStack {
                    LinearGradient(colors: [.primary1, .primary1.opacity(0.5)],
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
                            Image(systemName: "gear")
                                .foregroundStyle(.white)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
        } content: {
            
        } detail: {
            
        }
    }
}

#Preview {
    Home()
}
