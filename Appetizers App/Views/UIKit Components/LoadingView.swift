//
//  LoadingView.swift
//  Appetizers App
//
//  Created by Leo Merelo on 21/11/23.
//

import SwiftUI

//this time UIViewRepresentable instead of barcode UIViewControllerRepresentable
struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(.brandPrimary)
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    //write this to autocomplete
    //typealias UIViewType = UIActivityIndicatorView
    
    
}


struct LoadingView: View {
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            ActivityIndicator()
        }
    }
}
