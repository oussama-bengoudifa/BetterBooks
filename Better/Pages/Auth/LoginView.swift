//
//  LoginView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 25/4/2023.
//

import SwiftUI

struct LoginView: View {
    @State var showingBottomSheet : Bool = false
    @State var shouldRedirect : Bool = false
    @State private var path = NavigationPath()

    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(alignment: .leading){
                    HStack{
                        Button {
                            print("skip")
                        } label: {
                            Text("Skip")
                                .font(.system(size: 16, weight: .medium))
                                .frame(width: 82,height: 56)

                        }
                        .background(Color("gray-100"))
                        .foregroundColor(Color("primaryDark"))
                        .cornerRadius(8)
                        Spacer()
                    }
                    .padding(.top,40)
                    .padding(.bottom,60)
                    
                    VStack(alignment: .leading, spacing:16){
                        Group {
                            Text("Learning becomes\n")
                                .foregroundColor(Color("primaryDark"))
                                .font(.custom("Manrope-Bold", size: 28))
                                .bold()
                            
                            +
                            Text("fun ")
                                .foregroundColor(Color("primary"))
                                .font(.custom("Manrope-Bold", size: 28))
                                .bold()
                            +
                            Text("and ")
                                .foregroundColor(Color("primaryDark"))
                                .font(.custom("Manrope-Bold", size: 28))
                                .bold()
                            +
                            Text("easy")
                                .foregroundColor(Color("primary"))
                                .font(.custom("Manrope-Bold", size: 28))
                                .bold()
                        }
                        Text("Log in to personalize your experience & track your progress")
                            .font(.system(size: 16))
                        Spacer()
                        VStack(spacing: 24) {
                            HStack{
                                Spacer()
                                Text("By continuing I agree with the Terms & Conditions, Privacy Policy.")
                                    .font(.system(size: 14))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color("secondary"))
                                Spacer()
                            }
                            Button {
                                
                            } label: {
                                HStack(alignment: .center,spacing:19){
                                    Image(systemName:"apple.logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:22)
                                    Text("Continue with Apple")
                                        .font(.system(size: 16,weight:.medium))

                                }
                                .frame(maxWidth:.infinity)

                                
                            }
                            .frame(height:56)
                            .foregroundColor(Color.white)
                            .background(Color("primaryDark"))
                            .cornerRadius(8)

                        }
                        HStack(spacing:16){
                            Spacer()
                            Button {
                                
                            } label: {
                                Image("facebook")
                                    .resizable()
                                    .frame(width:24,height:24)
                            }
                            .frame(width:56,height:56)
                            .background(Color("gray-100"))
                            .cornerRadius(8)
                            
                            Button {
                                
                            } label: {
                                Image("google")
                                    .resizable()
                                    .frame(width:24,height:24)
                            }
                            .frame(width:56,height:56)
                            .background(Color("gray-100"))
                            .cornerRadius(8)

                            Button {
                                showingBottomSheet.toggle()
                            } label: {
                                Image("email")
                                    .resizable()
                                    .frame(width:24,height:24)
                            }
                            .frame(width:56,height:56)
                            .background(Color("gray-100"))
                            .cornerRadius(8)
                            
                            Spacer()
                        }
                    }
                    
                    Spacer()
                    
                    
                }
                .padding(.horizontal,20)
                .sheet(isPresented: $showingBottomSheet) {
                    SignupView(showingBottomSheet: self.$showingBottomSheet,path:self.$path)
            }
                .navigationDestination(for: String.self) { view in
                    if view == "WelcomeView"{
                        WelcomeView()
                    }
                }
        }
        
    

    }
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
