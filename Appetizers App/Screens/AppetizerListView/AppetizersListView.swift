//
//  AppetizersListView.swift
//  Appetizers App
//
//  Created by Leo Merelo on 20/11/23.
//

import SwiftUI

struct AppetizersListView: View   {

     @StateObject var viewModel  = AppetizersViewModel()
    
    var body: some View {
        
        ZStack{
            NavigationView {
                //List(MockData.appetizers, id: \.id) { appetizer in
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
            }
        
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) {  alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
    
    
}

#Preview {
    AppetizersListView()
}


