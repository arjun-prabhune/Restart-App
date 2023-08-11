@_private(sourceFile: "HomeView.swift") import Restart
import SwiftUI
import SwiftUI

extension HomeView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/HomeView.swift", line: 84)
        HomeView()
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/HomeView.swift", line: 18)
        VStack (spacing: __designTimeInteger("#5310.[1].[2].property.[0].[0].arg[0].value", fallback: 20)) {
            
            // MARK: - HEADER
             
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: __designTimeFloat("#5310.[1].[2].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[1].value", fallback: 0.1))
                
                Image(__designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[1].arg[0].value.[1].arg[0].value", fallback: "character-2"))
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? __designTimeInteger("#5310.[1].[2].property.[0].[0].arg[1].value.[1].arg[0].value.[1].modifier[3].arg[0].value.then", fallback: 35) : __designTimeInteger("#5310.[1].[2].property.[0].[0].arg[1].value.[1].arg[0].value.[1].modifier[3].arg[0].value.else", fallback: -35))
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever() ,
                        value: isAnimating
                    )
            }
        
            // MARK: - CENTER
            
            Text(__designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[2].arg[0].value", fallback: "The time that leads to mastery depends on the intensity of our focus"))
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            
            
            // MARK: - FOOTER
            
            Spacer()
            
            Button(action: {
                //Some action
                withAnimation {
                    playSound(sound: __designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "success"), type: __designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[4].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: ""))
                    isOnboardingViewActive = true
                }
            }) {
                Image(systemName: __designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: "arrow.triangle.2.circlepath.circle.fill"))
                    .imageScale(.large)
                
                Text(__designTimeString("#5310.[1].[2].property.[0].[0].arg[1].value.[4].arg[1].value.[1].arg[0].value", fallback: "Restart"))
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#5310.[1].[2].property.[0].[0].modifier[0].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 0.5), execute: {
                isAnimating = true
            })
        })
    
#sourceLocation()
    }
}

import struct Restart.HomeView
import struct Restart.HomeView_Previews

