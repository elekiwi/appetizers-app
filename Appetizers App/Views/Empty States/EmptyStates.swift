//
//  EmptyStates.swift
//  Appetizers App
//
//  Created by Leo Merelo on 22/11/23.
//

import SwiftUI

struct EmptyStates: View {
    
    let imageName: String
    let message: String
     
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message )
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                 
            }
        }
    }
}

#Preview {
    EmptyStates(imageName: "empty-order", message: "This is our default message. \nI'm making it a little bit long for test reasons. ")
}
