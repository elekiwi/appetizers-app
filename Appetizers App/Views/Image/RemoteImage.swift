//
//  RemoteImage.swift
//  Appetizers App
//
//  Created by Leo Merelo on 21/11/23.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published  var image: Image? = nil
    
    func load(fromURLString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            
            guard let uiImage = uiImage else { return }
             
            DispatchQueue.main.async {
                
                self.image = Image(uiImage: uiImage)
                
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View{
        image?.resizable() ?? Image("food-placeholder").resizable()
            
    }
}

struct AppetizerRemoteImage: View {
    
    //this stateobject ¡is listening to the published value on imageloader when network call is done
    //its got to redraw
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View{
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
