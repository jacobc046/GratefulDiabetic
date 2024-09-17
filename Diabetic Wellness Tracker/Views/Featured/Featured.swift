//
//  Featured.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/27/24.
//

import SwiftUI

struct Featured: View {
    @State var showAlert: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Background()
                
                List {
                    //MARK: Newsletter
                    NavigationLink {
                        
                    } label: {
                        Text("Newsletter")
                    }
                    .onTapGesture {
                        showAlert.toggle()
                    }
                    .alert("You are about to navigate away from the app!", isPresented: $showAlert) {
                        Link(destination: URL(string: "https://www.google.com/?client=safari")!, label: {
                            Text("Confirm")
                        })
                        Button("Cancel") {
                            showAlert = false
                        }
                    }
                    .listRowBackground(Color.clear)
                    .frame(idealHeight: 60)

                    //MARK: Featured recipes
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
}

#Preview {
    Featured()
}
