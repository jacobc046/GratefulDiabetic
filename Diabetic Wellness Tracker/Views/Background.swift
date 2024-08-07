//
//  Background.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 8/6/24.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(colors: [.primary1, .primary1.opacity(0.5)],
                       startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    Background()
}
