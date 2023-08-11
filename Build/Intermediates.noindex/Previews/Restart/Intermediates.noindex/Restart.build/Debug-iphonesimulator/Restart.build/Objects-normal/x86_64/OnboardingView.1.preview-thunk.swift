@_private(sourceFile: "OnboardingView.swift") import Restart
import SwiftUI
import SwiftUI

extension OnboardingView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/OnboardingView.swift", line: 204)
        OnboardingView()
    
#sourceLocation()
    }
}

extension OnboardingView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/arjunprabhune/SwiftTraining/Restart/Restart/Screens/OnboardingView.swift", line: 24)
        ZStack {
            Color(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "ColorBlue"))
                .ignoresSafeArea(.all, edges: .all)
            VStack (spacing: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 20)) {
                // MARK: - HEADER
                
                Spacer()
                
                
                VStack (spacing: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: 0)) {
                    Text(textTitle)
                        .font(.system(size: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 60)))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .transition(.opacity)
                        .id(textTitle)
                    
                    Text(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[1].value.[1].arg[0].value", fallback: """
                    It's not how much love we give but
                    how much love we put into giving.
                    """))
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[1].value.[1].modifier[4].arg[1].value", fallback: 10))
                    
                } //: HEADER
                .opacity(isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[0].value.then", fallback: 1) : __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[0].arg[0].value.else", fallback: 0))
                .offset(y: isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[0].value.then", fallback: 0) : __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[1].arg[0].value.else", fallback: -40))
                .animation(.easeOut(duration: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 1)), value: isAnimating)
                
                // MARK: - CENTER
                
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].arg[1].value", fallback: 0.2))
                        .offset(x: imageOffset.width * -__designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 1))
                        .blur(radius: abs(imageOffset.width / __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 5)))
                        .animation(.easeOut(duration: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: 1)), value: imageOffset)
                    
                    Image(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "character-1"))
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[2].arg[0].value.then", fallback: 1): __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[2].arg[0].value.else", fallback: 0))
                        .animation(.easeOut(duration: __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[3].arg[0].value.arg[0].value", fallback: 0.5)), value: isAnimating)
                        .offset(x: imageOffset.width * __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[4].arg[0].value.[0]", fallback: 1.2), y: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[4].arg[1].value", fallback: 0))
                        .rotationEffect(.degrees(Double(imageOffset.width / __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[5].arg[0].value.arg[0].value.arg[0].value.[0]", fallback: 20))))
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    if abs(imageOffset.width) <= 150 {
                                        imageOffset = gesture.translation
                                        
                                        withAnimation(.linear(duration: __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].arg[0].value.arg[0].value", fallback: 0.25))) {
                                            indicatorOpacity = __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].arg[1].value.[0].[0]", fallback: 0)
                                            textTitle = __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].arg[1].value.[1].[0]", fallback: "Give.")
                                        }
                                    }
                                }
                                .onEnded { _ in
                                    imageOffset = .zero
                                    
                                    withAnimation(.linear(duration: __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[1].arg[0].value.[1].arg[0].value.arg[0].value", fallback: 0.25))) {
                                        indicatorOpacity = __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[1].arg[0].value.[1].arg[1].value.[0].[0]", fallback: 1)
                                        textTitle = __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[6].arg[0].value.modifier[1].arg[0].value.[1].arg[1].value.[1].[0]", fallback: "Share.")
                                    }
                                }
                        ) //: GESTURE
                        .animation(.easeOut(duration: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value.[1].modifier[7].arg[0].value.arg[0].value", fallback: 1)), value: imageOffset)
                    
                } //: CENTER
                .overlay(
                    Image(systemName: __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: "arrow.left.and.right.circle"))
                        .font(.system(size: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 44), weight: .ultraLight))
                        .foregroundColor(.white)
                        .offset(y: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[2].arg[0].value", fallback: 20))
                        .opacity(isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[3].arg[0].value.then", fallback: 1) : __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[3].arg[0].value.else", fallback: 0))
                        .animation(.easeOut(duration: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[4].arg[0].value.arg[0].value", fallback: 1)).delay(__designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[0].value.modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 2)), value: isAnimating)
                        .opacity(indicatorOpacity)
                    , alignment: .bottom
                )
                
                
                
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack {
                    //PARTS OF THE BUTTON
                    
                    
                    // 1. BACKGROUND (STATIC)
                    
                    Capsule()
                        .fill(Color.white.opacity(__designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                    
                    Capsule()
                        .fill(Color.white.opacity(__designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[1].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.2)))
                        .padding(__designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[1].modifier[1].arg[0].value", fallback: 8))
                    
                    // 2. CALL-TO-ACTION (STATIC)
                    
                    Text(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[2].arg[0].value", fallback: "Get Started"))
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[2].modifier[3].arg[0].value", fallback: 20))
                    
                    
                    // 3. CAPSULE (DYNAMIC-WIDTH)
                    
                    HStack {
                        Capsule()
                            .fill(Color(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: "ColorRed")))
                            .frame(width: buttonOffset + __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[3].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: 80))
                        
                        Spacer()
                    }
                    
                    // 4. CIRCLE (DRAGGABLE)
                    
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color(__designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: "ColorRed")))
                            Circle()
                                .fill(.black.opacity(__designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.15)))
                                .padding(__designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 8))
                            Image(systemName: __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right.2"))
                                .font(.system(size: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[1].arg[0].value", fallback: 80), height: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[1].arg[1].value", fallback: 80), alignment: .center)
                        .offset(x: buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80{
                                        buttonOffset = gesture.translation.width
                                    }
                                }
                                .onEnded { _ in
                                    withAnimation(Animation.easeOut(duration: __designTimeFloat("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 0.4))) {
                                        if buttonOffset > buttonWidth / 2 {
                                            hapticFeedback.notificationOccurred(.success)
                                            playSound(sound: __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[1].value.[0].[0].[1].arg[0].value", fallback: "chimeup"), type: __designTimeString("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[1].value.[0].[0].[1].arg[1].value", fallback: "mp3"))
                                            buttonOffset = buttonWidth - __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[1].value.[0].[0].[2].[0]", fallback: 80)
                                            isOnboardingViewActive = false
                                        }
                                        else {
                                            hapticFeedback.notificationOccurred(.warning)
                                            buttonOffset = __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].arg[0].value.[4].arg[0].value.[0].modifier[3].arg[0].value.modifier[1].arg[0].value.[0].arg[1].value.[0].[1].[1].[0]", fallback: 0)
                                        }
                                    }
                                    
                                }
                        ) //: GESTURE
                        
                        Spacer()
                    } //: HSTACK
                    
                } //: FOOTER
                .frame(width: buttonWidth, height: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[0].arg[1].value", fallback: 80), alignment: .center)
                .padding()
                .opacity(isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[2].arg[0].value.then", fallback: 1) : __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[2].arg[0].value.else", fallback: 0))
                .offset(y: isAnimating ? __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[3].arg[0].value.then", fallback: 0) : __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[3].arg[0].value.else", fallback: 40))
                .animation(.easeOut(duration: __designTimeInteger("#5326.[1].[8].property.[0].[0].arg[0].value.[1].arg[1].value.[4].modifier[4].arg[0].value.arg[0].value", fallback: 1)), value: isAnimating)
            } //: VSTACK
        } //: ZSTACK
        .onAppear(perform: {
            isAnimating = true
        })
        .preferredColorScheme(.dark)
    
#sourceLocation()
    }
}

import struct Restart.OnboardingView
import struct Restart.OnboardingView_Previews

