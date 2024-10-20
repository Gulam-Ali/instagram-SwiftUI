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
            Text("Feed")
                .tabItem { Image(systemName: "house") }
            
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
            
            Text("Post")
                .tabItem { Image(systemName: "plus.square") }
            
            Text("Notification")
                .tabItem { Image(systemName: "heart") }
            
            Text("Profile")
                .tabItem { Image(systemName: "person") }
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
