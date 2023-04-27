//
//  WelcomeView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 25/4/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isSavingPassword: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing:40){
           Image("welcome")
                .resizable()
                .scaledToFit()
                .frame(width: 108,height: 150)
            VStack(alignment: .leading,spacing: 16){
                Group {
                    Text("Glad to have you\nwith us,")
                        .foregroundColor(Color("primaryDark"))
                        .font(.custom("Manrope-Bold", size: 28))
                        .bold()
                    
                    +
                    Text("Oussama!")
                        .foregroundColor(Color("primary"))
                        .font(.custom("Manrope-Bold", size: 28))
                        .bold()
                }
                Text("Let your journey begin")
                    .font(.system(size: 16))

            }
            Spacer()
            Button {
                isSavingPassword = true
            } label: {
                Text("Continue")
                    .font(.system(size: 16,weight:.medium))
                    .frame(maxWidth:.infinity)


            }
            .frame(height:56)
            .background(Color("primary"))
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.vertical,30)

        }
        .alert(isPresented: $isSavingPassword) {
                   Alert(title: Text("Would you like to save this password in your iCloud Keychain to use with apps and website on all devices?"), message: Text("You can view and remove saved passwords in Passwords settings."), primaryButton: .default(Text("Save Password")), secondaryButton: .default(
                   Text("Not Now")))
               }
        .padding(.top,100)
        .padding(.horizontal,20)
        .navigationBarBackButtonHidden(true)

        
    }
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
