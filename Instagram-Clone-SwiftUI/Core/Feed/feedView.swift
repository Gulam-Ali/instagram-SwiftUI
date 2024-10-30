//
//  feedView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 22/10/24.
//

import SwiftUI

struct feedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                //Story grid
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(content: {
                        ForEach(1...20, id: \.self) { count in
                            Image("Tommy_Shelby")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(.circle)
                        }
                    })
                }
                
                .frame(height: 80)
                
               
            
                //Feed Vgrid
                LazyVStack(spacing: 30, content: {
                    ForEach(0...16, id: \.self) { count in
                        FeedCell()
                    }
                })
                .padding(.top, 8)
                
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram-text-icon")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            })
        }
    }
}

#Preview {
    feedView()
}

struct FeedCell: View {
    
    var body: some View {
        VStack{
            
            //profile and name
            HStack{
                Image("PB")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                
                Text("Tommy Shelby")
                    .font(.headline)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 8)
            
            //post image
            Image("PB")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(.rect)
                .padding(.bottom, 4)
            
            //comments view
            HStack(spacing: 15){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                
                Spacer()
            }
            .tint(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 8)
            
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 8)
                .padding(.top, 2)
            
            HStack{
                Text("Tommy Shelby ")
                    .fontWeight(.bold)
                +
                Text("In a bleak mid winter, some super long caption comes here..")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 8)
            .padding(.top, 2)
           
        }
        
    }
}
