//
//  AppetizerListCell.swift
//  Appetizers App
//
//  Created by Leo Merelo on 20/11/23.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer:  Appetizer
    
    var body: some View {
        HStack {
            /*Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)*/
        
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit) 
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.all)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetize )
}
