//
//  BetterApp.swift
//  Better
//
//  Created by Bengoudifa Oussama on 24/4/2023.
//

import SwiftUI
import AppTrackingTransparency

@main
struct BetterApp: App {
    @State private var isShowingSplashScreen = true
    @State private var seenOnboardingScreens : Bool;

    init() {
        seenOnboardingScreens =  UserDefaults.standard.bool(forKey: "x-seenOnboardingScreens")
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                if seenOnboardingScreens {
                    LoginView()
                        .onAppear(){
                            if #available(iOS 14, *){
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    ATTrackingManager.requestTrackingAuthorization { status in
                                        switch status{
                                        case .notDetermined:
                                            print("notDetermined")
                                        case .restricted:
                                            print("restricted")
                                            
                                        case .denied:
                                            print("denied")
                                            
                                        case .authorized:
                                            print("authorized")
                                            
                                        @unknown default:
                                            print("@unknown")
                                        }
                                    }
                                }
                            } else {
                                print("other")
                            }
                        }
                        .opacity(isShowingSplashScreen ? 0 : 1)
                }else{
                    OnboardingView()
                        .onAppear(){
                            if #available(iOS 14, *){
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    ATTrackingManager.requestTrackingAuthorization { status in
                                        switch status{
                                        case .notDetermined:
                                            print("notDetermined")
                                        case .restricted:
                                            print("restricted")
                                            
                                        case .denied:
                                            print("denied")
                                            
                                        case .authorized:
                                            print("authorized")
                                            
                                        @unknown default:
                                            print("@unknown")
                                        }
                                    }
                                }
                            } else {
                                print("other")
                            }
                        }
                        .opacity(isShowingSplashScreen ? 0 : 1)
                }
                
             

                
                SplashView()
                    .opacity(isShowingSplashScreen ? 1 : 0)
                    .animation(.easeOut(duration: isShowingSplashScreen ? 0.5 : 0))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                isShowingSplashScreen = false
                            }
                        }
                    }
            }
            
            
        }
        
    }
}
