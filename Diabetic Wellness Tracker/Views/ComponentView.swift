//
//  ComponentView.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/28/24.
//

import SwiftUI

struct ComponentView: View {
    let heading: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(heading)
                .font(.title2)
            Text(text)
        }
        .padding()
        .frame(width: 350, alignment: .topLeading)
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ComponentView(heading: "Heading", text: "Text")
}
