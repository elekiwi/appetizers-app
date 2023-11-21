//
//  Appetizer.swift
//  Appetizers App
//
//  Created by Leo Merelo on 20/11/23.
//

import Foundation

//when we get json from the server decodable will decode that into this model
struct Appetizer: Decodable, Identifiable  {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable {
         
    let request: [Appetizer]
}

struct MockData{
    
     static let sampleAppetize = Appetizer(id: 000, name: "Test Appetizer", description: "This is a description for my apetizer its yummy", price: 5.99, imageURL: "", calories: 99, protein: 25, carbs: 213)
    
    static let appetizers = [sampleAppetize,sampleAppetize,sampleAppetize,sampleAppetize ]
}
