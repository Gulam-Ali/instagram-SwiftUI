//
//  tabView.swift
//  Instagram-Clone-SwiftUI
//
//  Created by Gulam Ali on 20/10/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
           feedView()
                .tabItem { Image(systemName: "house") }
            
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass") }
            
            Text("Post")
                .tabItem { Image(systemName: "plus.square") }
            
            Text("Notification")
                .tabItem { Image(systemName: "heart") }
            
            ProfileView()
                .tabItem { Image(systemName: "person") }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
