//
//  Featured.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/27/24.
//

import SwiftUI
import SafariServices

struct Featured: View {
    var body: some View {
        ZStack {
            Background()
            
            List {
                HStack {
                    Link(destination: URL(string: "https://www.google.com/?client=safari")!, label: {
                        Text("Newsletter")
                    })
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: 60)

                NavigationLink {
                    FeaturedRecipesView()
                } label: {
                    Text("Featured Recipes")
                }
                .listRowBackground(Color.clear)
                .frame(idealHeight: 60)

            }
            .scrollContentBackground(.hidden)
            .listStyle(.inset)
            
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Featured()
}
