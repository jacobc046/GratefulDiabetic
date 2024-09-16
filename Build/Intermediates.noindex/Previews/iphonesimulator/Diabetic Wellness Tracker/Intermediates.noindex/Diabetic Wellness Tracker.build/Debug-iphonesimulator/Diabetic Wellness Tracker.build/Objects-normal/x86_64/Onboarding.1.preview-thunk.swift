@_private(sourceFile: "Onboarding.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Onboarding {
    @_dynamicReplacement(for: setUserDefaults()) private func __preview__setUserDefaults() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 107)
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[2].modifier[0].arg[0].value", fallback: true), forKey: kIsLoggedIn)
        UserDefaults.standard.set(__designTimeString("#4848.[9].[8].[3].modifier[0].arg[0].value", fallback: ""), forKey: kJournalPrompt)
        UserDefaults.standard.set(Date().formatted(date: .numeric, time: .omitted), forKey: kTodaysDate)
        UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[5].modifier[0].arg[0].value", fallback: true), forKey: kJournalReminderNotifications)
        UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[6].modifier[0].arg[0].value", fallback: true), forKey: kNewsletterUpdateNotifications)
        
        var journalReminderDateComponents = DateComponents()
        journalReminderDateComponents.hour = __designTimeInteger("#4848.[9].[8].[8].[0]", fallback: 19)
        journalReminderDateComponents.minute = __designTimeInteger("#4848.[9].[8].[9].[0]", fallback: 00)
        UserDefaults.standard.set(journalReminderDateComponents, forKey: kJournalReminderTime)
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: isValid(name:)) private func __preview__isValid(name: String) -> Bool {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 99)
        guard !name.isEmpty else { return false }
        let nameValidationRegex = __designTimeString("#4848.[9].[7].[1].value", fallback: "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$")
        let nameValidationPredicate = NSPredicate(format: __designTimeString("#4848.[9].[7].[2].value.arg[0].value", fallback: "SELF MATCHES %@"), nameValidationRegex)
        return nameValidationPredicate.evaluate(with: name)
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: evaluateFields()) private func __preview__evaluateFields() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 90)
        if isValid(name: firstName) || isValid(name: lastName) {
            withAnimation(.linear) {
                fieldsAreComplete = __designTimeBoolean("#4848.[9].[6].[0].[0].[0].arg[1].value.[0].[0]", fallback: true)
            }
        } else {
            fieldsAreComplete = __designTimeBoolean("#4848.[9].[6].[0].[1].[0].[0]", fallback: false)
        }
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 29)
        NavigationStack {
            Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome to Greatfully Diabetic"))
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        
            ZStack {
                Rectangle()
                    .frame(width: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 200))
                    .foregroundStyle(.primary1)
                Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "logo here"))
            }
            
            TextField(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "First Name"), text: $firstName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
            
            
            TextField(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: "Last Name"), text: $lastName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
            
            Button {
                if fieldsAreComplete {
                    isLoggedIn = __designTimeBoolean("#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[0].[0]", fallback: true)
                    setUserDefaults()
                } else {
                    showAlert.toggle()
                }
            } label: {
                Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Submit"))
                    .foregroundStyle(fieldsAreComplete ? .black : .white)
                    .font(.title2)
            }
            .alert(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: "One or more fields are empty"), isPresented: $showAlert, actions: {})
            .frame(width: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[0].value", fallback: 360), height: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 60))
            .background(fieldsAreComplete ? .primary1 : .gray)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.arg[0].value", fallback: 10.0)))
            .padding()
            .onChange(of: [firstName, lastName], { oldValue, newValue in
                evaluateFields()
            })
            .navigationDestination(isPresented: $isLoggedIn, destination: { 
                ContentView()
                    .environment(\.managedObjectContext, CoreDataManager.instance.context)
            })
        }
        .onAppear {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = __designTimeBoolean("#4848.[9].[5].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0]", fallback: true)
            }
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Onboarding
#Preview {
    Onboarding()
}



