//
//  AgeView.swift
//  Better
//
//  Created by Bengoudifa Oussama on 27/4/2023.
//

import SwiftUI

struct AgeView: View {
    
    @State private var selectedAge : String? = nil
    
    var body: some View {
            VStack(spacing:20){
                HStack(alignment:.top,spacing: 4){
                    Spacer()
                    VStack(alignment: .leading ){
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
                
                Text("What is your age?")
                    .font(.custom("Manrope-Bold", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(Color("primaryDark"))

                
                VStack(spacing:16){
                    Button {
                        selectedAge  = "18-24"
                    } label: {
                        Text("18 - 24")
                            .font(.system(size: 18, design: .default))
                            .foregroundColor(Color("primaryDark"))
                            .frame(maxWidth:.infinity)

                    }
                    .frame(height:56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedAge == "18-24" ? Color("green") : Color("gray-300"), lineWidth: 1)
                           
                    )
                    
                    Button {
                        selectedAge  = "25-34"
                    } label: {
                        Text("25 - 34")
                            .font(.system(size: 18, design: .default))
                            .foregroundColor(Color("primaryDark"))
                            .frame(maxWidth:.infinity)

                    }
                    .frame(height:56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedAge == "25-34" ? Color("green") : Color("gray-300"), lineWidth: 1)
                           
                    )

                    Button {
                        selectedAge  = "35-44"
                    } label: {
                        Text("35 - 44")
                            .font(.system(size: 18, design: .default))
                            .foregroundColor(Color("primaryDark"))
                            .frame(maxWidth:.infinity)

                    }
                    .frame(height:56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedAge == "35-44" ? Color("green") : Color("gray-300"), lineWidth: 1)
                           
                    )
                    
                    Button {
                        selectedAge  = "45-54"
                    } label: {
                        Text("45 - 54")
                            .font(.system(size: 18, design: .default))
                            .foregroundColor(Color("primaryDark"))
                            .frame(maxWidth:.infinity)

                    }
                    .frame(height:56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedAge == "45-54" ? Color("green") : Color("gray-300"), lineWidth: 1)
                           
                    )
                    
                    Button {
                        selectedAge  = "55+"
                    } label: {
                        Text("55+")
                            .font(.system(size: 18, design: .default))
                            .foregroundColor(Color("primaryDark"))
                            .frame(maxWidth:.infinity)

                    }
                    .frame(height:56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedAge == "55+" ? Color("green") : Color("gray-300"), lineWidth: 1)
                           
                    )
                    
                    
                }
                .padding(.horizontal,20)
                .padding(.vertical,15)
                
                Spacer()
                
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
                
                
            }

    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
