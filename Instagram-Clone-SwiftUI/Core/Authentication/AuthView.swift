//
//  AuthView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 29/10/24.
//

import SwiftUI

struct AuthView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("instagram-text-icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                VStack(spacing: 8){
                    TextField(text: $username) {
                        Text("Username")
                    }
                    .textInputAutocapitalization(.none)
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 24)
                    
                    SecureField(text: $password) {
                        Text("Password")
                    }
                    .font(.subheadline)
                    .padding(20)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 24)

                }
                
                
                Button {
                    print("forgot password Tapped")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top, 15)
                        .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Button {
                    print("Login Tapped")
                } label: {
                    Text("Login")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 12))
                }
                .padding(.top, 20)
                .padding(.horizontal, 24)
   
            }
        }
    }
}

#Preview {
    AuthView()
}
