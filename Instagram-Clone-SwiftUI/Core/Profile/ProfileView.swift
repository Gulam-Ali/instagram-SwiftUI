//
//  ProfileView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 21/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let postGrids : [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical){
                //Header view
                VStack(spacing: 10){
                    HStack{
                        Image("Tommy_Shelby")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(.circle)
                        
                        ProfileMetricView(count: "3", metric: "Posts")
                        ProfileMetricView(count: "24", metric: "Followers")
                        ProfileMetricView(count: "1", metric: "Following")
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
                LazyVGrid(columns: postGrids, spacing: 1, content: {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("PB")
                            .resizable()
                            .scaledToFill()
                            .frame(height: UIScreen.main.bounds.width / 3 - 2)
                            .clipped()
                        
                    }
                })
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.3.horizontal")
                            .tint(.black)
                    })
                }
            })
        }
    }
}

#Preview {
    ProfileView()
}

struct ProfileMetricView: View {
    var count : String = "0"
    var metric : String = "0"
    
    var body: some View {
        VStack{
            Text(count)
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(metric)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}
