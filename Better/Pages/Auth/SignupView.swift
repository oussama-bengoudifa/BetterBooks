//
//  SignupView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 25/4/2023.
//

import SwiftUI

struct SignupView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Binding var showingBottomSheet: Bool
    @Binding var path: NavigationPath


    var body: some View {
        VStack(spacing:0) {
            VStack(spacing:0){
                HStack{
                    HStack(spacing:12){
                        Button {
                            showingBottomSheet.toggle()
                            path.append("WelcomeView")
                        } label: {
                            Image(systemName: "multiply")
                                .resizable()
                                .scaledToFit()
                                .frame(height:12)
                        }
                        .foregroundColor(Color("primaryDark"))


                        Text("Create an account")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("primaryDark"))

                    }
                    Spacer()
                    Button {
                    } label: {
                        Text("Log in")
                            .font(.system(size: 16, weight: .medium))
                    }
                    .frame(width:82,height:56)
                    .background(Color("gray-100"))
                    .foregroundColor(Color("primaryDark"))
                    .cornerRadius(8)
                    
                }
                .padding(.top,20)
                .padding(.bottom,20)
                .padding(.horizontal,13.5 )
                
                Rectangle()
                    .fill(Color("gray-300"))
                    .frame(height:1)
            }
            VStack(spacing:16){
                InputView(state: name,icon:"person",placeholder:"Name")
                InputView(state: email,icon:"envelope",placeholder:"Email")
                InputView(state: password,icon:"lock",placeholder:"Password (8+ characters)",isPassword: true)
                
                Button {
                    showingBottomSheet.toggle()
                    path.append("WelcomeView")
                } label: {
                    Text("Get Started")
                        .frame(maxWidth:.infinity)

                }
                .frame(height:56)
                .background(Color("primary"))
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.top,8)
                
                Text("By continuing I agree with the Terms & Conditions, Privacy Policy.")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("secondary"))
                    .padding(.top,4)
            }
            .padding(.vertical,22)
            .padding(.horizontal,20)
            Spacer()
        }


    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct InputView: View {
    @State var state : String;
    var icon : String;
    var placeholder : String;
    var isPassword : Bool = false;
    
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(state.isEmpty ? Color("secondary") : Color("primary"))
            
            if isPassword{
                SecureField("", text: $state)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.asciiCapable)
                    .autocorrectionDisabled(true)
                    .placeholder(when: state.isEmpty) {
                        Text(placeholder).foregroundColor(Color("secondary"))
                    }
                    .foregroundColor(Color("primary"))
            }else{
                TextField("", text: $state)
                    .placeholder(when: state.isEmpty) {
                        Text(placeholder).foregroundColor(Color("secondary"))
                    }
                    .foregroundColor(Color("primary"))
            }
            
            
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(state.isEmpty ? Color("gray-300") : Color("primary")))
    }
}
