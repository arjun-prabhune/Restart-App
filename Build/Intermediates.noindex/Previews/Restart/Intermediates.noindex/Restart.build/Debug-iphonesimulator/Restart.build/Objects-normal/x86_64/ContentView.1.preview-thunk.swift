@_private(sourceFile: "ContentView.swift") import Restart
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/ContentView.swift", line: 27)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/ContentView.swift", line: 15)
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    
#sourceLocation()
    }
}

import struct Restart.ContentView
import struct Restart.ContentView_Previews

