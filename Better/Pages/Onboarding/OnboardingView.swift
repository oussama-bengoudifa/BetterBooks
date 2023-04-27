//
//  OnboardingView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 24/4/2023.
//

import SwiftUI


struct OnboardingView: View {
    @State var activeStep : Int = 1
    
    @State private var willMoveToNextScreen = false

    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            HStack{
                Spacer()
                Image("onBoardingStep\(activeStep)")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .padding(.vertical,60)
                Spacer()
            }
            HStack{
                VStack(alignment: .leading,spacing:0){
                    HStack(spacing:8){
                        Step(text: "1",isPrimary: activeStep == 1)
                        Step(text: "2",isPrimary: activeStep == 2)
                        Step(text: "3",isPrimary: activeStep == 3)
                        Step(text: "4",isPrimary: activeStep == 4)
                    }
                    .padding(.bottom,24)
                    
                    Text(OnboardingModel(activeStep: activeStep).title)
                        .font(.custom("Manrope-Bold", size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(Color("primaryDark"))
                    
                    HStack(spacing:0){
                        Text(OnboardingModel(activeStep: activeStep).description)
                            .font(.system(size: 16, design:  .default))
                            .foregroundColor(Color("primaryDark"))
                    }
                    .padding(.top,16)
                    Spacer()
                    Button(action: {
                        if activeStep < 4 {
                            activeStep += 1
                        }else{
                            UserDefaults.standard.set(true, forKey: "x-seenOnboardingScreens")
                            willMoveToNextScreen.toggle()
                        }
                    }, label: {
                        Text("Continue")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 56)
                            .background(Color("primary"))
                            .cornerRadius(8)
                        
                    })
                    
                }
                Spacer()
            }
            .padding(.horizontal,20)
            
            
            Spacer()
            
        }
        .navigate(to: LoginView(), when: $willMoveToNextScreen)

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct Step: View {
    var text : String = "0"
    var isPrimary : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(isPrimary ? Color("primary") : Color("gray-300"))
                .frame(width: 20, height: 20)
            Text(text)
                .font(.system(size: 14, weight: .bold, design: .default))
                .foregroundColor(isPrimary ? .white : Color("primaryDark"))
        }
    }
}



extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
