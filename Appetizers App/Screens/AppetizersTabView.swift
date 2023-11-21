//
//  ContentView.swift
//  Appetizers App
//
//  Created by Leo Merelo on 20/11/23.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("House")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color(.brandPrimary))
        
    }
    
}

#Preview {
    AppetizersTabView()
}
