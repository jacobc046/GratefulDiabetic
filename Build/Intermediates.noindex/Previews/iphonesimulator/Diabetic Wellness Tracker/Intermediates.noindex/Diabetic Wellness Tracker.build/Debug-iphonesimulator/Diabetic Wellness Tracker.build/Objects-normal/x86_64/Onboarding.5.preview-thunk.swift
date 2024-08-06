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
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 85)
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(firstName, "#7981.[4].[7].[0].modifier[0].arg[0].value"), forKey: __designTimeSelection(kFirstName, "#7981.[4].[7].[0].modifier[0].arg[1].value")), "#7981.[4].[7].[0]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeSelection(lastName, "#7981.[4].[7].[1].modifier[0].arg[0].value"), forKey: __designTimeSelection(kLastName, "#7981.[4].[7].[1].modifier[0].arg[1].value")), "#7981.[4].[7].[1]")
        __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#7981.[4].[7].[2].modifier[0].arg[0].value", fallback: true), forKey: __designTimeSelection(kIsLoggedIn, "#7981.[4].[7].[2].modifier[0].arg[1].value")), "#7981.[4].[7].[2]")
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: evaluateFields()) private func __preview__evaluateFields() {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 77)
        if !firstName.isEmpty && !lastName.isEmpty {
            __designTimeSelection(withAnimation(.linear) {
                fieldsAreComplete = __designTimeBoolean("#7981.[4].[6].[0].[0].[0].arg[1].value.[0].[0]", fallback: true)
            }, "#7981.[4].[6].[0].[0].[0]")
        }
    
#sourceLocation()
    }
}

extension Onboarding {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/jacobc/Development/swift/Diabetic Wellness Tracker/Diabetic Wellness Tracker/Views/Onboarding.swift", line: 24)
        __designTimeSelection(NavigationStack {
            __designTimeSelection(Text(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome to the diabetic wellness app"))
                .font(.largeTitle), "#7981.[4].[5].property.[0].[0].arg[0].value.[0]")
        
            __designTimeSelection(ZStack {
                __designTimeSelection(Rectangle()
                    .frame(width: __designTimeInteger("#7981.[4].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 200), height: __designTimeInteger("#7981.[4].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 200))
                    .foregroundStyle(.primary1), "#7981.[4].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "logo here")), "#7981.[4].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
            }, "#7981.[4].[5].property.[0].[0].arg[0].value.[1]")
            
            __designTimeSelection(TextField(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "First Name"), text: __designTimeSelection($firstName, "#7981.[4].[5].property.[0].[0].arg[0].value.[2].arg[1].value"))
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words), "#7981.[4].[5].property.[0].[0].arg[0].value.[2]")
            __designTimeSelection(TextField(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: "Last Name"), text: __designTimeSelection($lastName, "#7981.[4].[5].property.[0].[0].arg[0].value.[3].arg[1].value"))
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding()
                .textInputAutocapitalization(.words), "#7981.[4].[5].property.[0].[0].arg[0].value.[3]")
            
            __designTimeSelection(Button {
                if fieldsAreComplete {
                    isLoggedIn = __designTimeBoolean("#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[0].[0]", fallback: true)
                    __designTimeSelection(setUserDefaults(), "#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[0].[1]")
                } else {
                    __designTimeSelection(showAlert.toggle(), "#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[0].value.[0].[1].[0]")
                }
            } label: {
                __designTimeSelection(Text(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Submit"))
                    .foregroundStyle(__designTimeSelection(fieldsAreComplete, "#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0].modifier[0].arg[0].value.if") ? .black : .white)
                    .font(.title2), "#7981.[4].[5].property.[0].[0].arg[0].value.[4].arg[1].value.[0]")
            }
            .alert(__designTimeString("#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[0].value", fallback: "One or more fields are empty"), isPresented: __designTimeSelection($showAlert, "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[0].arg[1].value"), actions: {})
            .frame(width: __designTimeInteger("#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[0].value", fallback: 360), height: __designTimeInteger("#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 60))
            .background(__designTimeSelection(fieldsAreComplete, "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[2].arg[0].value.if") ? .primary1 : .gray)
            .clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value.arg[0].value", fallback: 10.0)), "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[3].arg[0].value"))
            .padding()
            .onChange(of: [__designTimeSelection(firstName, "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[0].value.[0]"), __designTimeSelection(lastName, "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[0].value.[1]")], { oldValue, newValue in
                __designTimeSelection(evaluateFields(), "#7981.[4].[5].property.[0].[0].arg[0].value.[4].modifier[5].arg[1].value.[0]")
            }), "#7981.[4].[5].property.[0].[0].arg[0].value.[4]")
        }
        
        .onAppear {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = __designTimeBoolean("#7981.[4].[5].property.[0].[0].modifier[0].arg[0].value.[0].[0].[0].[0]", fallback: true)
            }
        }, "#7981.[4].[5].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct Diabetic_Wellness_Tracker.Onboarding
#Preview {
    Onboarding()
}



