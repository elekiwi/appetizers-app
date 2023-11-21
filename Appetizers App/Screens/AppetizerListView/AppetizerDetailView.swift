//
//  AppetizerDetailView.swift
//  Appetizers App
//
//  Created by Leo Merelo on 21/11/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @StateObject var viewModel = AppetizersViewModel()
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: .infinity, height: 225)

            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .fontWeight(.light)
                .padding(.horizontal)
            
            HStack{
                
                VStack(spacing: 5){
                    Text("Calories")
                        .font(.caption)
                    Text("\(appetizer.calories)")
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .italic()

                }
              
                VStack(spacing: 5){
                    Text("Carbs")
                        .font(.caption)

                    Text("\(appetizer.carbs)")
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .italic()

                }
                
                VStack(spacing: 5) {
                    Text("Protein")
                        .font(.caption)
  
                    Text("\(appetizer.protein)")
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .italic()

                }
            }
            .padding(.top)
     
            Spacer()
            
            Button {
                
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to order")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 280, height: 50)
                    .background(Color(.brandPrimary))
                    .cornerRadius(10)
            }
            
            .padding(30)
            
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            
        } label: {
            
            ZStack {
                
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .foregroundColor(.gray)
                    .frame(width: 44, height: 44)
            }
            
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetize)
}
