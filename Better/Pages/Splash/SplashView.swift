//
//  SplashView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 24/4/2023.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        ZStack {
            //            VStack{
            //                HStack{
            //                    Spacer()
            //                    Image("shape1")
            //                        .resizable()
            //                        .frame(width: 89, height: 107)
            //                        .offset(x:25,y:-40)
            //
            //                }
            //                Spacer()
            //            }
            //            VStack{
            //                Spacer()
            //                HStack{
            //                    Spacer()
            //                    Image("shape2")
            //                        .resizable()
            //                        .frame(width: 160, height: 160)
            //                        .padding()
            //                }
            //
            //            }
            //            VStack{
            //                HStack{
            //                    Image("shape3")
            //                        .resizable()
            //                        .frame(width: 80, height: 80)
            //                    Spacer()
            //                }
            //                .padding(.vertical,100)
            //                .padding(.horizontal,23)
            //
            //                Spacer()
            //            }
            Image("logo")
                .resizable()
                .frame(maxWidth: 140, maxHeight: 90)
            
        }
        .ignoresSafeArea(.all)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
    

