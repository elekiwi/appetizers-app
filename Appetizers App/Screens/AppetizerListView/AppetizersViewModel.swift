//
//  AppetizersViewModel.swift
//  Appetizers App
//
//  Created by Leo Merelo on 20/11/23.
//

import SwiftUI

final class AppetizersViewModel: ObservableObject {
    
    //wheenever this updates is gonna broadcast to view  
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false

    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error{
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                        
                    }
                }
                
            }
        }
    }
}
