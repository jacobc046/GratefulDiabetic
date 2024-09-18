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
let kJournalPrompt = "journal prompt"
let kTodaysDate = "todays date"
let kJournalReminderNotifications = "journalReminders"
let kNewsletterUpdateNotifications = "newsletterUpdateNotifications"
let kJournalReminderTime = "journalReminderTime"

struct Onboarding: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var isLoggedIn = false
    
    @State var showAlert = false
    @State var fieldsAreComplete = false
    
    var body: some View {
        NavigationStack {
            Text("Welcome to Greatfully Diabetic")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        
            Image("GratefullyDiabeticLogo")
                .resizable()
                .scaledToFit()
            
            TextField("First Name", text: $firstName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
            
            
            TextField("Last Name", text: $lastName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
            
            Button {
                if fieldsAreComplete {
                    isLoggedIn = true
                    setUserDefaults()
                } else {
                    showAlert.toggle()
                }
            } label: {
                Text("Submit")
                    .foregroundStyle(fieldsAreComplete ? .black : .white)
                    .font(.title2)
            }
            .alert("One or more fields are empty", isPresented: $showAlert, actions: {})
            .frame(width: 360, height: 60)
            .background(fieldsAreComplete ? .primary1 : .gray)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .padding()
            
            .onChange(of: [firstName, lastName], { _, _ in
                evaluateFields()
                
            })
            
            .navigationDestination(isPresented: $isLoggedIn, destination: {
                ContentView()
                    .environment(\.managedObjectContext, CoreDataManager.instance.context)
            })
        }
        .onAppear {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = true
            }
        }
    }
    
    
    func evaluateFields() {
        if isValid(name: firstName) && isValid(name: lastName) {
            withAnimation(.linear) {
                fieldsAreComplete = true
            }
        } else {
            withAnimation(.linear) {
                fieldsAreComplete = false
            }
        }
    }
    func isValid(name: String) -> Bool {
        guard !name.isEmpty else { return false }
        
        let nameValidationRegex = "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$"
        return !name.contains(nameValidationRegex)
    }

    
    func setUserDefaults() {
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
        UserDefaults.standard.set("", forKey: kJournalPrompt)
        UserDefaults.standard.set(Date().formatted(date: .numeric, time: .omitted), forKey: kTodaysDate)
        UserDefaults.standard.set(true, forKey: kJournalReminderNotifications)
        UserDefaults.standard.set(true, forKey: kNewsletterUpdateNotifications)
        
        let journalReminderDate = Calendar.current.date(bySettingHour: 19, minute: 0, second: 0, of: Date())! as NSDate
        UserDefaults.standard.set(journalReminderDate, forKey: kJournalReminderTime)
    }
}


#Preview {
    Onboarding()
}
