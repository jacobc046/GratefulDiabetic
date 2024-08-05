//
//  Onboarding.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/5/24.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kIsLoggedIn = "login key"

struct Onboarding: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var isLoggedIn = false
    
    @State var showAlert = false
    
    var body: some View {
        Text("Welcome to the diabetic wellness app")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
        
        ZStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundStyle(.primary1)
            Text("logo here")
        }
        
        TextField("First Name", text: $firstName)
            .font(.title)
            .textFieldStyle(.roundedBorder)
            .padding()
            .textInputAutocapitalization(.words)
        TextField("Last Name", text: $lastName)
            .font(.title)
            .textFieldStyle(.roundedBorder)
            .padding()
            .textInputAutocapitalization(.words)
        
        Button {
            if fieldsAreComplete() {
                isLoggedIn = true
                setUserDefaults()
            } else {
                showAlert.toggle()
            }
        } label: {
            Text("Submit")
                .foregroundStyle(fieldsAreComplete() ? .black : .white)
                .font(.title2)
        }
        .alert("One or more fields are empty", isPresented: $showAlert, actions: {})
        .frame(width: 360, height: 60)
        .background(fieldsAreComplete() ? .primary1 : .gray)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .padding()

    }
    
    
    func fieldsAreComplete() -> Bool {
        return !firstName.isEmpty && !lastName.isEmpty
    }
    
    func setUserDefaults() {
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
    }
}




#Preview {
    Onboarding()
}
