//
//  SearchView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 29/10/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(0...15, id: \.self) { user in
                        HStack(spacing: 15){
                            Image("Tommy_Shelby")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(.circle)
                            VStack(alignment: .leading){
                                Text("Arthur_Shelby")
                                    .font(.headline)
                                Text("Arthur Shelby")
                                    .font(.footnote)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding(.horizontal, 15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
