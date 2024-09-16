@_private(sourceFile: "Onboarding.swift") import Diabetic_Wellness_Tracker
import func SwiftUI.__designTimeSelection
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
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(firstName, "#4848.[9].[8].[0].modifier[0].arg[0].value"), forKey: __designTimeSelection(kFirstName, "#4848.[9].[8].[0].modifier[0].arg[1].value")), "#4848.[9].[8].[0]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(lastName, "#4848.[9].[8].[1].modifier[0].arg[0].value"), forKey: __designTimeSelection(kLastName, "#4848.[9].[8].[1].modifier[0].arg[1].value")), "#4848.[9].[8].[1]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[2].modifier[0].arg[0].value", fallback: true), forKey: __designTimeSelection(kIsLoggedIn, "#4848.[9].[8].[2].modifier[0].arg[1].value")), "#4848.[9].[8].[2]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeString("#4848.[9].[8].[3].modifier[0].arg[0].value", fallback: ""), forKey: __designTimeSelection(kJournalPrompt, "#4848.[9].[8].[3].modifier[0].arg[1].value")), "#4848.[9].[8].[3]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(Date().formatted(date: .numeric, time: .omitted), "#4848.[9].[8].[4].modifier[0].arg[0].value"), forKey: __designTimeSelection(kTodaysDate, "#4848.[9].[8].[4].modifier[0].arg[1].value")), "#4848.[9].[8].[4]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[5].modifier[0].arg[0].value", fallback: true), forKey: __designTimeSelection(kJournalReminderNotifications, "#4848.[9].[8].[5].modifier[0].arg[1].value")), "#4848.[9].[8].[5]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#4848.[9].[8].[6].modifier[0].arg[0].value", fallback: true), forKey: __designTimeSelection(kNewsletterUpdateNotifications, "#4848.[9].[8].[6].modifier[0].arg[1].value")), "#4848.[9].[8].[6]")
        
        var journalReminderDateComponents = DateComponents()
        journalReminderDateComponents.hour = __designTimeInteger("#4848.[9].[8].[8].[0]", fallback: 19)
        journalReminderDateComponents.minute = __designTimeInteger("#4848.[9].[8].[9].[0]", fallback: 00)
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(journalReminderDateComponents, "#4848.[9].[8].[10].modifier[0].arg[0].value"), forKey: __designTimeSelection(kJournalReminderTime, "#4848.[9].[8].[10].modifier[0].arg[1].value")), "#4848.[9].[8].[10]")
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: isValid(name:)) private func __preview__isValid(name: String) -> Bool {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 99)
        guard !name.isEmpty else { return false }
        let nameValidationRegex = __designTimeString("#4848.[9].[7].[1].value", fallback: "^[\\p{L}0-9!#$%&'*+\\/=?^_`{|}~-][\\p{L}0-9.!#$%&'*+\\/=?^_`{|}~-]{0,63}@[\\p{L}0-9-]+(?:\\.[\\p{L}0-9-]{2,7})*$")
        let nameValidationPredicate = NSPredicate(format: __designTimeString("#4848.[9].[7].[2].value.arg[0].value", fallback: "SELF MATCHES %@"), __designTimeSelection(nameValidationRegex, "#4848.[9].[7].[2].value.arg[1].value"))
        return __designTimeSelection(nameValidationPredicate.evaluate(with: __designTimeSelection(name, "#4848.[9].[7].[3].modifier[0].arg[0].value")), "#4848.[9].[7].[3]")
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: evaluateFields()) private func __preview__evaluateFields() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 90)
        if isValid(name: firstName) || isValid(name: lastName) {
            __designTimeSelection(withAnimation(.linear) {
                fieldsAreComplete = __designTimeBoolean("#4848.[9].[6].[0].[0].[0].arg[1].value.[0].[0]", fallback: true)
            }, "#4848.[9].[6].[0].[0].[0]")
        } else {
            fieldsAreComplete = __designTimeBoolean("#4848.[9].[6].[0].[1].[0].[0]", fallback: false)
        }
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 29)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome to Greatfully Diabetic"))
                .font(.largeTitle)
                .multilineTextAlignment(.center), "#4848.[9].[5].property.[0].[0].arg[0].value.[0]")
        
            __designTimeSelection(ZStack {
                __designTimeSelection(Rectangle()
                    .frame(width: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 200))
                    .foregroundStyle(.primary1), "#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "logo here")), "#4848.[9].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
            }, "#4848.[9].[5].property.[0].[0].arg[0].value.[1]")
            
            __designTimeSelection(TextField(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "First Name"), text: __designTimeSelection($firstName, "#4848.[9].[5].property.[0].[0].arg[0].value.[2].arg[1].value"))
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled(), "#4848.[9].[5].property.[0].[0].arg[0].value.[2]")
            
            
            __designTimeSelection(TextField(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: "Last Name"), text: __designTimeSelection($lastName, "#4848.[9].[5].property.[0].[0].arg[0].value.[3].arg[1].value"))
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled(), "#4848.[9].[5].property.[0].[0].arg[0].value.[3]")
            
            __designTimeSelection(Button {
                if fieldsAreComplete {
                    isLoggedIn = __designTimeBoolean("#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[0].[0]", fallback: true)
                    __designTimeSelection(setUserDefaults(), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[1]")
                } else {
                    __designTimeSelection(showAlert.toggle(), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[1].[0]")
                }
            } label: {
                __designTimeSelection(Text(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Submit"))
                    .foregroundStyle(__designTimeSelection(fieldsAreComplete, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].modifier[0].arg[0].value.if") ? .black : .white)
                    .font(.title2), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0]")
            }
            .alert(__designTimeString("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: "One or more fields are empty"), isPresented: __designTimeSelection($showAlert, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value"), actions: {})
            .frame(width: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[0].value", fallback: 360), height: __designTimeInteger("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 60))
            .background(__designTimeSelection(fieldsAreComplete, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[2].arg[0].value.if") ? .primary1 : .gray)
            .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.arg[0].value", fallback: 10.0)), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value"))
            .padding()
            .onChange(of: [__designTimeSelection(firstName, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[0].value.[0]"), __designTimeSelection(lastName, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[0].value.[1]")], { oldValue, newValue in
                __designTimeSelection(evaluateFields(), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[1].value.[0]")
            })
            .navigationDestination(isPresented: __designTimeSelection($isLoggedIn, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[6].arg[0].value"), destination: { 
                __designTimeSelection(ContentView()
                    .environment(\.managedObjectContext, __designTimeSelection(CoreDataManager.instance.context, "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[6].arg[1].value.[0].modifier[0].arg[1].value")), "#4848.[9].[5].property.[0].[0].arg[0].value.[4].modifier[6].arg[1].value.[0]")
            }), "#4848.[9].[5].property.[0].[0].arg[0].value.[4]")
        }
        .onAppear {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = __designTimeBoolean("#4848.[9].[5].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0]", fallback: true)
            }
        }, "#4848.[9].[5].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Onboarding
#Preview {
    Onboarding()
}



