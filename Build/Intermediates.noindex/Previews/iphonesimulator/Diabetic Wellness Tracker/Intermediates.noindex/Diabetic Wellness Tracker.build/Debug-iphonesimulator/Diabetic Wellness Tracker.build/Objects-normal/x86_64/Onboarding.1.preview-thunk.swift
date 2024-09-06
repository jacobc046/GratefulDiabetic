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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 91)
        UserDefaults.standard.set(firstName, forKey: kFirstName)
        UserDefaults.standard.set(lastName, forKey: kLastName)
        UserDefaults.standard.set(__designTimeBoolean("#9552.[6].[7].[2].modifier[0].arg[0].value", fallback: true), forKey: kIsLoggedIn)
        UserDefaults.standard.set(__designTimeString("#9552.[6].[7].[3].modifier[0].arg[0].value", fallback: ""), forKey: kJournalPrompt)
        UserDefaults.standard.set(Date().formatted(date: .numeric, time: .omitted), forKey: kTodaysDate)
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: evaluateFields()) private func __preview__evaluateFields() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 83)
        if !firstName.isEmpty && !lastName.isEmpty {
            withAnimation(.linear) {
                fieldsAreComplete = __designTimeBoolean("#9552.[6].[6].[0].[0].[0].arg[1].value.[0].[0]", fallback: true)
            }
        }
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 26)
        NavigationStack {
            Text(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome to Greatfully Diabetic"))
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        
            ZStack {
                Rectangle()
                    .frame(width: __designTimeInteger("#9552.[6].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#9552.[6].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 200))
                    .foregroundStyle(.primary1)
                Text(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "logo here"))
            }
            
            TextField(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "First Name"), text: $firstName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
            TextField(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: "Last Name"), text: $lastName)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words)
            
            Button {
                if fieldsAreComplete {
                    isLoggedIn = __designTimeBoolean("#9552.[6].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[0].[0]", fallback: true)
                    setUserDefaults()
                } else {
                    showAlert.toggle()
                }
            } label: {
                Text(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Submit"))
                    .foregroundStyle(fieldsAreComplete ? .black : .white)
                    .font(.title2)
            }
            .alert(__designTimeString("#9552.[6].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: "One or more fields are empty"), isPresented: $showAlert, actions: {})
            .frame(width: __designTimeInteger("#9552.[6].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[0].value", fallback: 360), height: __designTimeInteger("#9552.[6].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 60))
            .background(fieldsAreComplete ? .primary1 : .gray)
            .clipShape(RoundedRectangle(cornerRadius: __designTimeFloat("#9552.[6].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.arg[0].value", fallback: 10.0)))
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
                isLoggedIn = __designTimeBoolean("#9552.[6].[5].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0]", fallback: true)
            }
        }
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Onboarding
#Preview {
    Onboarding()
}



