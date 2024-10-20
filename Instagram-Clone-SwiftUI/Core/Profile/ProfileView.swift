//
//  ProfileView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 21/10/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //Header view
            VStack{
                HStack{
                    Image("Tommy_Shelby")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(.circle)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Tommy Shelby")
                        .font(.callout)
                        .fontWeight(.semibold)
                    Text("Peaky Blinder, South Brampton")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 38)
                        .foregroundStyle(Color.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(.gray, lineWidth: 1.0))
                })
                
                Divider()
            }
            
            //Post grid view
        }
    }
}

#Preview {
    ProfileView()
}
