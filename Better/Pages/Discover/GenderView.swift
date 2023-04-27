//
//  GenderView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 27/4/2023.
//

import SwiftUI

struct GenderView: View {
    
    @State private var selectedGender : String? = nil
    
    var body: some View {
        VStack(spacing:20){
            
            HStack(alignment:.top,spacing: 4){
                Spacer()
                VStack(alignment: .leading  ){
                    HStack(alignment: .center, spacing:4) {
                        
                        ZStack {
                            Circle()
                                .fill(Color("primaryDark") )
                                .frame(width: 20, height: 20)
                            Text("1")
                                .font(.system(size: 14, weight: .bold, design: .default))
                                .foregroundColor(Color.white)
                        }
                        ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                            .frame(width: 160,height:4)
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                            .tint(Color("primaryDark"))
                            .background(Color("gray-300"))
                    }
                    Text("About you")
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(Color("primaryDark"))
                        .offset(x:-16)
                }
                ZStack {
                    Circle()
                        .fill(Color("gray-300") )
                        .frame(width: 20, height: 20)
                    Text("1")
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(Color("secondary"))
                }
                
            }
            .offset(x:8)
            
            Text("Select your gender")
                .font(.custom("Manrope-Bold", size: 28))
                .fontWeight(.bold)
                .foregroundColor(Color("primaryDark"))
            
            HStack(spacing:10){
                
                Button {
                    selectedGender = "male"
                } label: {
                    VStack(spacing:24){
                        Image("male")
                            .resizable()
                            .frame(width: 60,height: 60)
                        Text("Male")
                            .font(.system(size: 18))
                            .foregroundColor(Color("primaryDark"))
                        
                    }
                    .padding(.horizontal,22.5)
                    .padding(.vertical,24)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedGender == "male" ? Color("green") : Color("gray-300"), lineWidth: 1)
                    )
                }
                .buttonStyle(PlainButtonStyle())
                
                
                
                
                
                Button {
                    selectedGender = "female"
                } label: {
                    VStack(spacing:24){
                        Image("female")
                            .resizable()
                            .frame(width: 60,height: 60)
                        Text("Female")
                            .font(.system(size: 18))
                            .foregroundColor(Color("primaryDark"))
                    }
                    .padding(.horizontal,22.5)
                    .padding(.vertical,24)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedGender == "female" ? Color("green") : Color("gray-300"), lineWidth: 1)
                    )
                }
                .buttonStyle(PlainButtonStyle())
                
                
                
                
                Button {
                    selectedGender = "other"
                } label: {
                    VStack(spacing:24){
                        Image("male")
                            .resizable()
                            .frame(width: 60,height: 60)
                        Text("Other")
                            .font(.system(size: 18))
                            .foregroundColor(Color("primaryDark"))
                    }
                    .padding(.horizontal,22.5)
                    .padding(.vertical,24)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedGender == "other" ? Color("green") : Color("gray-300"), lineWidth: 1)
                    )
                    
                }
                .buttonStyle(PlainButtonStyle())
                
                
            }
            .padding(.bottom,4)
            .padding(.top,16)
            .padding(.horizontal,20)
            
            Button {
            } label: {
                Text("Continue")
                    .font(.system(size: 16,weight:.medium))
                    .frame(maxWidth:.infinity)

            }
            .frame(height:56)
            .background(Color("primary"))
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.horizontal,20)
            
            
            Spacer()
        }
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
